/******************************************************
Copyright (c) 2011-2013 Percona LLC and/or its affiliates.

Data sink interface.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

*******************************************************/

#ifndef XB_DATASINK_H
#define XB_DATASINK_H

#include <my_global.h>
#include <my_dir.h>

#ifdef __cplusplus
extern "C" {
#endif

struct datasink_struct;
typedef struct datasink_struct datasink_t;

/* 数据池环境 (ds_create)
ptr 用于指向该数据池具体执行环境，如 compress_ds_data->ptr 指向 ds_compress_ctxt_t，
ds_compress_ctxt_t 包含执行具体压缩任务的线程变量
pipe_ctxt 指向下一数据池，如 compress_ds_data->pipe_ctxt 指向 buffer_ds */
typedef struct ds_ctxt {
	datasink_t	*datasink;      // 数据池类型，决定数据池执行的方法
	char 		*root;          // 数据池根地址
	void		*ptr;           // 数据池执行环境
	struct ds_ctxt	*pipe_ctxt; // 数据池管道，即当前数据池的输出目的地
} ds_ctxt_t;

/* 数据池文件环境 (ds_open)
ptr 用于指向具体文件类型，如 ds_compress_file_t */
typedef struct {
	void		*ptr;           // 执行文件
	char		*path;          // 输出路径
	datasink_t	*datasink;      // 数据池类型，决定数据池执行的方法
} ds_file_t;

/* 数据池类型 */
struct datasink_struct {
	ds_ctxt_t *(*init)(const char *root);                                  // 初始化数据池
	ds_file_t *(*open)(ds_ctxt_t *ctxt, const char *path, MY_STAT *stat);  // 打开数据池文件
	int (*write)(ds_file_t *file, const void *buf, size_t len);            // 向数据池写入数据
	int (*close)(ds_file_t *file);                                         // 关闭数据池，并将缓存中的数据输出到管道
	void (*deinit)(ds_ctxt_t *ctxt);                                       // 清理数据池
};

/* Supported datasink types */
typedef enum {
	DS_TYPE_STDOUT,
	DS_TYPE_LOCAL,
	DS_TYPE_ARCHIVE,
	DS_TYPE_XBSTREAM,
	DS_TYPE_COMPRESS,
	DS_TYPE_ENCRYPT,
	DS_TYPE_DECRYPT,
	DS_TYPE_TMPFILE,
	DS_TYPE_BUFFER
} ds_type_t;

/************************************************************************
Create a datasink of the specified type */
ds_ctxt_t *ds_create(const char *root, ds_type_t type);

/************************************************************************
Open a datasink file */
ds_file_t *ds_open(ds_ctxt_t *ctxt, const char *path, MY_STAT *stat);

/************************************************************************
Write to a datasink file.
@return 0 on success, 1 on error. */
int ds_write(ds_file_t *file, const void *buf, size_t len);

/************************************************************************
Close a datasink file.
@return 0 on success, 1, on error. */
int ds_close(ds_file_t *file);

/************************************************************************
Destroy a datasink handle */
void ds_destroy(ds_ctxt_t *ctxt);

/************************************************************************
Set the destination pipe for a datasink (only makes sense for compress and
tmpfile). */
void ds_set_pipe(ds_ctxt_t *ctxt, ds_ctxt_t *pipe_ctxt);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* XB_DATASINK_H */
