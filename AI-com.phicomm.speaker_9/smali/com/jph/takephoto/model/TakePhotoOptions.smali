.class public Lcom/jph/takephoto/model/TakePhotoOptions;
.super Ljava/lang/Object;
.source "TakePhotoOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/model/TakePhotoOptions$Builder;
    }
.end annotation


# instance fields
.field private correctImage:Z

.field private withOwnGallery:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jph/takephoto/model/TakePhotoOptions$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/jph/takephoto/model/TakePhotoOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public isCorrectImage()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions;->correctImage:Z

    return v0
.end method

.method public isWithOwnGallery()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/jph/takephoto/model/TakePhotoOptions;->withOwnGallery:Z

    return v0
.end method

.method public setCorrectImage(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/jph/takephoto/model/TakePhotoOptions;->correctImage:Z

    return-void
.end method

.method public setWithOwnGallery(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/jph/takephoto/model/TakePhotoOptions;->withOwnGallery:Z

    return-void
.end method
