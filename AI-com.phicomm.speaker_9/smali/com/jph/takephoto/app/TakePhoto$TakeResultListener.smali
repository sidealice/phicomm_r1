.class public interface abstract Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;
.super Ljava/lang/Object;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/app/TakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TakeResultListener"
.end annotation


# virtual methods
.method public abstract takeCancel()V
.end method

.method public abstract takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V
.end method

.method public abstract takeSuccess(Lcom/jph/takephoto/model/TResult;)V
.end method
