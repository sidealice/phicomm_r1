.class public interface abstract Lcom/alibaba/sdk/android/feedback/util/IWxCallback;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR:I = 0x0

.field public static final ERROR_INVALID_CMDID:I = 0x3

.field public static final ERROR_INVALID_LOGINSTATE:I = 0x2

.field public static final ERROR_INVALID_PARAMS:I = 0x6

.field public static final ERROR_NETWORK_ERROR:I = 0x8

.field public static final ERROR_NETWORK_NULL:I = 0x1

.field public static final ERROR_NO_EXIST_SDCARD:I = 0xf

.field public static final ERROR_OOM:I = 0xc

.field public static final ERROR_PARAM_ERR:I = 0xb

.field public static final ERROR_POOL_FULL:I = 0xd

.field public static final ERROR_REQ_NOT_ALLOWED:I = 0x4

.field public static final ERROR_SERVER_ERR:I = 0xff

.field public static final ERROR_TIME_OUT:I = 0x9

.field public static final ERROR_TOKEN_SAME:I = 0xa

.field public static final ERROR_TOKEN_UNAVAIL:I = 0x7

.field public static final ERROR_UNPACK_ERR:I = 0xfe

.field public static final ERROR_VALID_FAIL:I = 0x5


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public varargs abstract onSuccess([Ljava/lang/Object;)V
.end method
