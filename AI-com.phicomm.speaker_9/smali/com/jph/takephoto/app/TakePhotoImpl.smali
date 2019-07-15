.class public Lcom/jph/takephoto/app/TakePhotoImpl;
.super Ljava/lang/Object;
.source "TakePhotoImpl.java"

# interfaces
.implements Lcom/jph/takephoto/app/TakePhoto;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

.field private contextWrap:Lcom/jph/takephoto/model/TContextWrap;

.field private cropOptions:Lcom/jph/takephoto/model/CropOptions;

.field private fromType:Lcom/jph/takephoto/model/TImage$FromType;

.field private listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

.field private multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

.field private outPutUri:Landroid/net/Uri;

.field private permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field private showCompressDialog:Z

.field private takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

.field private tempUri:Landroid/net/Uri;

.field private wailLoadDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/jph/takephoto/uitl/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jph/takephoto/app/TakePhotoImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/jph/takephoto/model/TContextWrap;->of(Landroid/app/Activity;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    .line 81
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lcom/jph/takephoto/model/TContextWrap;->of(Landroid/support/v4/app/Fragment;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    .line 86
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/compress/CompressConfig;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jph/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->deleteRawFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jph/takephoto/app/TakePhotoImpl;Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->handleTakeCallBack(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jph/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->wailLoadDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/model/TContextWrap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    return-object p0
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    .line 475
    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    .line 476
    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    .line 477
    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    return-void
.end method

.method private cropContinue(Z)V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/jph/takephoto/model/MultipleCrop;->setCropWithUri(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v0

    const-string v1, "index"

    .line 299
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "isLast"

    .line 300
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/MultipleCrop;->gettImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/MultipleCrop;->gettImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v3}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jph/takephoto/R$string;->msg_crop_canceled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/MultipleCrop;->getUris()Ljava/util/ArrayList;

    move-result-object p1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/MultipleCrop;->getOutUris()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-direct {p0, p1, v0, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V

    :goto_0
    return-void
.end method

.method private cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 1

    .line 289
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 290
    invoke-virtual {p3}, Lcom/jph/takephoto/model/CropOptions;->isWithOwnCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-static {v0, p1, p2, p3}, Lcom/jph/takephoto/uitl/TUtils;->cropWithOwnApp(Lcom/jph/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-static {v0, p1, p2, p3}, Lcom/jph/takephoto/uitl/TUtils;->cropWithOtherAppBySafely(Lcom/jph/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V

    :goto_0
    return-void
.end method

.method private deleteRawFile(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jph/takephoto/model/TImage;

    .line 442
    sget-object v1, Lcom/jph/takephoto/model/TImage$FromType;->CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

    iget-object v2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    if-ne v1, v2, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/jph/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jph/takephoto/uitl/TFileUtils;->delete(Ljava/lang/String;)V

    const-string v1, ""

    .line 444
    invoke-virtual {v0, v1}, Lcom/jph/takephoto/model/TImage;->setOriginalPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs handleTakeCallBack(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 450
    array-length v1, p2

    if-lez v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    aget-object p2, p2, v0

    invoke-interface {v1, p1, p2}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    iget-boolean p2, p2, Lcom/jph/takephoto/model/MultipleCrop;->hasFailed:Z

    if-eqz p2, :cond_1

    .line 453
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jph/takephoto/R$string;->msg_crop_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    if-eqz p2, :cond_6

    .line 456
    invoke-virtual {p1}, Lcom/jph/takephoto/model/TResult;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jph/takephoto/model/TImage;

    if-eqz v1, :cond_3

    .line 457
    invoke-virtual {v1}, Lcom/jph/takephoto/model/TImage;->isCompressed()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 463
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/jph/takephoto/R$string;->msg_compress_failed:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_5
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p2, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeSuccess(Lcom/jph/takephoto/model/TResult;)V

    goto :goto_0

    .line 468
    :cond_6
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p2, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeSuccess(Lcom/jph/takephoto/model/TResult;)V

    .line 470
    :goto_0
    invoke-direct {p0}, Lcom/jph/takephoto/app/TakePhotoImpl;->clearParams()V

    return-void
.end method

.method private selectPicture(IZ)V
    .locals 5

    .line 324
    sget-object v0, Lcom/jph/takephoto/model/TImage$FromType;->OTHER:Lcom/jph/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    .line 325
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TakePhotoOptions;->isWithOwnGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->onPickMultiple(I)V

    return-void

    .line 329
    :cond_0
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 330
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v2, Lcom/jph/takephoto/model/TIntentWap;

    invoke-static {}, Lcom/jph/takephoto/uitl/IntentUtils;->getPickIntentWithDocuments()Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_2

    const/16 v4, 0x3ed

    goto :goto_0

    :cond_2
    const/16 v4, 0x3ec

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/jph/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Lcom/jph/takephoto/model/TIntentWap;

    invoke-static {}, Lcom/jph/takephoto/uitl/IntentUtils;->getPickIntentWithGallery()Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_3

    const/16 v4, 0x3ef

    goto :goto_1

    :cond_3
    const/16 v4, 0x3ee

    :goto_1
    invoke-direct {v2, v3, v4}, Lcom/jph/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-static {v2, v0, p1, p2}, Lcom/jph/takephoto/uitl/TUtils;->sendIntentBySafely(Lcom/jph/takephoto/model/TContextWrap;Ljava/util/List;IZ)V
    :try_end_0
    .catch Lcom/jph/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 336
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, v0}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private varargs takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->handleTakeCallBack(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v3}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jph/takephoto/R$string;->tip_compress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jph/takephoto/uitl/TUtils;->showProgressDialog(Landroid/app/Activity;[Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->wailLoadDialog:Landroid/app/ProgressDialog;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TResult;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/jph/takephoto/app/TakePhotoImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl$1;-><init>(Lcom/jph/takephoto/app/TakePhotoImpl;Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/jph/takephoto/compress/CompressImageImpl;->of(Landroid/content/Context;Lcom/jph/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lcom/jph/takephoto/compress/CompressImage$CompressListener;)Lcom/jph/takephoto/compress/CompressImage;

    move-result-object p1

    .line 436
    invoke-interface {p1}, Lcom/jph/takephoto/compress/CompressImage;->compress()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x1a35

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "images"

    .line 234
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    if-eqz p2, :cond_0

    .line 237
    :try_start_0
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/jph/takephoto/uitl/TUtils;->convertImageToUri(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2, p3}, Lcom/jph/takephoto/model/MultipleCrop;->of(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/MultipleCrop;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->onCrop(Lcom/jph/takephoto/model/MultipleCrop;Lcom/jph/takephoto/model/CropOptions;)V
    :try_end_0
    .catch Lcom/jph/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 239
    invoke-direct {p0, v3}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    .line 240
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 243
    :cond_0
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUtils;->getTImagesWithImages(Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 117
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    :try_end_1
    .catch Lcom/jph/takephoto/model/TException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 119
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_2
    if-ne p2, v1, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/jph/takephoto/model/TException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_3
    if-ne p2, v1, :cond_4

    .line 153
    :try_start_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    :try_end_3
    .catch Lcom/jph/takephoto/model/TException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 155
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_4
    if-ne p2, v1, :cond_5

    .line 141
    :try_start_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUriParse;->getFilePathWithDocumentsUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/jph/takephoto/model/TException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 143
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_5
    if-ne p2, v1, :cond_7

    .line 177
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TakePhotoOptions;->isCorrectImage()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/jph/takephoto/uitl/ImageRotateUtil;->of()Lcom/jph/takephoto/uitl/ImageRotateUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3}, Lcom/jph/takephoto/uitl/ImageRotateUtil;->correctImage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    :cond_6
    :try_start_5
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/jph/takephoto/model/TException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception p1

    .line 181
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 185
    :cond_7
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :pswitch_6
    if-ne p2, v1, :cond_9

    .line 164
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TakePhotoOptions;->isCorrectImage()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/jph/takephoto/uitl/ImageRotateUtil;->of()Lcom/jph/takephoto/uitl/ImageRotateUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3}, Lcom/jph/takephoto/uitl/ImageRotateUtil;->correctImage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 166
    :cond_8
    :try_start_6
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p3}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p3, v0}, Lcom/jph/takephoto/uitl/TUriParse;->parseOwnUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    :try_end_6
    .catch Lcom/jph/takephoto/model/TException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception p1

    .line 168
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_0

    :cond_a
    :pswitch_7
    if-ne p2, v1, :cond_c

    .line 191
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    if-eqz p1, :cond_b

    .line 192
    invoke-direct {p0, v2}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto/16 :goto_0

    .line 195
    :cond_b
    :try_start_7
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v2}, Lcom/jph/takephoto/model/TImage;->setCropped(Z)V

    .line 197
    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/jph/takephoto/model/TException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception p1

    .line 199
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_c
    if-nez p2, :cond_10

    .line 204
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    if-eqz p1, :cond_e

    if-eqz p3, :cond_d

    const-string p1, "data"

    .line 206
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 207
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TImageFiles;->writeToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 208
    invoke-direct {p0, v2}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_0

    .line 210
    :cond_d
    invoke-direct {p0, v3}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_0

    :cond_e
    if-eqz p3, :cond_f

    const-string p1, "data"

    .line 214
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 215
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TImageFiles;->writeToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 217
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    .line 218
    invoke-virtual {p1, v2}, Lcom/jph/takephoto/model/TImage;->setCropped(Z)V

    .line 219
    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_f
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto :goto_0

    .line 225
    :cond_10
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    if-eqz p1, :cond_11

    .line 226
    invoke-direct {p0, v3}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_0

    .line 228
    :cond_11
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->listener:Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cropOptions"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jph/takephoto/model/CropOptions;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    const-string v0, "takePhotoOptions"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jph/takephoto/model/TakePhotoOptions;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    const-string v0, "showCompressDialog"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    const-string v0, "outPutUri"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const-string v0, "tempUri"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    const-string v0, "compressConfig"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jph/takephoto/compress/CompressConfig;

    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    :cond_0
    return-void
.end method

.method public onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 275
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v1}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/jph/takephoto/uitl/TImageFiles;->getMimeType(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jph/takephoto/uitl/TImageFiles;->checkMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/jph/takephoto/R$string;->tip_type_not_image:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 277
    new-instance p1, Lcom/jph/takephoto/model/TException;

    sget-object p2, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lcom/jph/takephoto/model/TExceptionType;

    invoke-direct {p1, p2}, Lcom/jph/takephoto/model/TException;-><init>(Lcom/jph/takephoto/model/TExceptionType;)V

    throw p1

    .line 279
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jph/takephoto/app/TakePhotoImpl;->cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V

    return-void
.end method

.method public onCrop(Lcom/jph/takephoto/model/MultipleCrop;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->multipleCrop:Lcom/jph/takephoto/model/MultipleCrop;

    .line 285
    invoke-virtual {p1}, Lcom/jph/takephoto/model/MultipleCrop;->getUris()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/MultipleCrop;->getOutUris()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V

    return-void
.end method

.method public onEnableCompress(Lcom/jph/takephoto/compress/CompressConfig;Z)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    .line 396
    iput-boolean p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    return-void
.end method

.method public onPickFromCapture(Landroid/net/Uri;)V
    .locals 4

    .line 357
    sget-object v0, Lcom/jph/takephoto/model/TImage$FromType;->CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    .line 358
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jph/takephoto/uitl/TUriParse;->convertFileUriToFileProviderUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    goto :goto_0

    .line 362
    :cond_1
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 366
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    new-instance v0, Lcom/jph/takephoto/model/TIntentWap;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/jph/takephoto/uitl/IntentUtils;->getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v2}, Lcom/jph/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-static {p1, v0}, Lcom/jph/takephoto/uitl/TUtils;->captureBySafely(Lcom/jph/takephoto/model/TContextWrap;Lcom/jph/takephoto/model/TIntentWap;)V
    :try_end_0
    .catch Lcom/jph/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 368
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {v0, v1}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object v0

    invoke-static {v0}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onPickFromCaptureWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 3

    .line 375
    sget-object v0, Lcom/jph/takephoto/model/TImage$FromType;->CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    .line 376
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    .line 378
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 379
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    .line 380
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/jph/takephoto/uitl/TUriParse;->getTempUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    goto :goto_0

    .line 382
    :cond_1
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    .line 386
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    new-instance p2, Lcom/jph/takephoto/model/TIntentWap;

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/jph/takephoto/uitl/IntentUtils;->getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p2, v0, v1}, Lcom/jph/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-static {p1, p2}, Lcom/jph/takephoto/uitl/TUtils;->captureBySafely(Lcom/jph/takephoto/model/TContextWrap;Lcom/jph/takephoto/model/TIntentWap;)V
    :try_end_0
    .catch Lcom/jph/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 388
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {p2, v0}, Lcom/jph/takephoto/model/TImage;->of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lcom/jph/takephoto/model/TResult;->of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onPickFromDocuments()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0, v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromDocumentsWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 0

    .line 350
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    .line 351
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromGallery()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromGalleryWithCrop(Landroid/net/Uri;Lcom/jph/takephoto/model/CropOptions;)V
    .locals 0

    .line 343
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    .line 344
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 345
    invoke-direct {p0, p1, p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickMultiple(I)V
    .locals 3

    .line 257
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    new-instance v1, Lcom/jph/takephoto/model/TIntentWap;

    iget-object v2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->contextWrap:Lcom/jph/takephoto/model/TContextWrap;

    invoke-static {v2, p1}, Lcom/jph/takephoto/uitl/IntentUtils;->getPickMultipleIntent(Lcom/jph/takephoto/model/TContextWrap;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v2, 0x3f0

    invoke-direct {v1, p1, v2}, Lcom/jph/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-static {v0, v1}, Lcom/jph/takephoto/uitl/TUtils;->startActivityForResult(Lcom/jph/takephoto/model/TContextWrap;Lcom/jph/takephoto/model/TIntentWap;)V

    return-void
.end method

.method public onPickMultipleWithCrop(ILcom/jph/takephoto/model/CropOptions;)V
    .locals 1

    .line 263
    sget-object v0, Lcom/jph/takephoto/model/TImage$FromType;->OTHER:Lcom/jph/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    .line 264
    invoke-virtual {p0, p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->onPickMultiple(I)V

    .line 265
    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "cropOptions"

    .line 103
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->cropOptions:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "takePhotoOptions"

    .line 104
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "showCompressDialog"

    .line 105
    iget-boolean v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "outPutUri"

    .line 106
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "tempUri"

    .line 107
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "compressConfig"

    .line 108
    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->compressConfig:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public permissionNotify(Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->permissionType:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-void
.end method

.method public setTakePhotoOptions(Lcom/jph/takephoto/model/TakePhotoOptions;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lcom/jph/takephoto/model/TakePhotoOptions;

    return-void
.end method
