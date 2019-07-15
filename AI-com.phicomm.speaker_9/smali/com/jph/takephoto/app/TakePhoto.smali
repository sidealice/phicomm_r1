.class public interface abstract Lcom/jph/takephoto/app/TakePhoto;
.super Ljava/lang/Object;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;
    }
.end annotation


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation
.end method

.method public abstract onCrop(Lcom/jph/takephoto/model/MultipleCrop;Lcom/jph/takephoto/model/CropOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation
.end method

.method public abstract onEnableCompress(Lcom/jph/takephoto/compress/CompressConfig;Z)V
.end method

.method public abstract onPickFromCapture(Landroid/net/Uri;)V
.end method

.method public abstract onPickFromCaptureWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickFromDocuments()V
.end method

.method public abstract onPickFromDocumentsWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickFromGallery()V
.end method

.method public abstract onPickFromGalleryWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickMultiple(I)V
.end method

.method public abstract onPickMultipleWithCrop(ILcom/jph/takephoto/model/CropOptions;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract permissionNotify(Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;)V
.end method

.method public abstract setTakePhotoOptions(Lcom/jph/takephoto/model/TakePhotoOptions;)V
.end method
