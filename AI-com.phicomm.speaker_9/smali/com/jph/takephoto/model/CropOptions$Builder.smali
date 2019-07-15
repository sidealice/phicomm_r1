.class public Lcom/jph/takephoto/model/CropOptions$Builder;
.super Ljava/lang/Object;
.source "CropOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/model/CropOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lcom/jph/takephoto/model/CropOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/jph/takephoto/model/CropOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jph/takephoto/model/CropOptions;-><init>(Lcom/jph/takephoto/model/CropOptions$1;)V

    iput-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    return-void
.end method


# virtual methods
.method public create()Lcom/jph/takephoto/model/CropOptions;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    return-object v0
.end method

.method public setAspectX(I)Lcom/jph/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/CropOptions;->setAspectX(I)V

    return-object p0
.end method

.method public setAspectY(I)Lcom/jph/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/CropOptions;->setAspectY(I)V

    return-object p0
.end method

.method public setOutputX(I)Lcom/jph/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/CropOptions;->setOutputX(I)V

    return-object p0
.end method

.method public setOutputY(I)Lcom/jph/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/CropOptions;->setOutputY(I)V

    return-object p0
.end method

.method public setWithOwnCrop(Z)Lcom/jph/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jph/takephoto/model/CropOptions$Builder;->options:Lcom/jph/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/CropOptions;->setWithOwnCrop(Z)V

    return-object p0
.end method
