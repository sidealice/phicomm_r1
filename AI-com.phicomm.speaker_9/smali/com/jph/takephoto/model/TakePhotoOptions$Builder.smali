.class public Lcom/jph/takephoto/model/TakePhotoOptions$Builder;
.super Ljava/lang/Object;
.source "TakePhotoOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/model/TakePhotoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lcom/jph/takephoto/model/TakePhotoOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/jph/takephoto/model/TakePhotoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jph/takephoto/model/TakePhotoOptions;-><init>(Lcom/jph/takephoto/model/TakePhotoOptions$1;)V

    iput-object v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions$Builder;->options:Lcom/jph/takephoto/model/TakePhotoOptions;

    return-void
.end method


# virtual methods
.method public create()Lcom/jph/takephoto/model/TakePhotoOptions;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions$Builder;->options:Lcom/jph/takephoto/model/TakePhotoOptions;

    return-object v0
.end method

.method public setCorrectImage(Z)Lcom/jph/takephoto/model/TakePhotoOptions$Builder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions$Builder;->options:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/TakePhotoOptions;->setCorrectImage(Z)V

    return-object p0
.end method

.method public setWithOwnGallery(Z)Lcom/jph/takephoto/model/TakePhotoOptions$Builder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions$Builder;->options:Lcom/jph/takephoto/model/TakePhotoOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/TakePhotoOptions;->setWithOwnGallery(Z)V

    return-object p0
.end method
