.class public interface abstract Lorg/xutils/http/body/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# virtual methods
.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
