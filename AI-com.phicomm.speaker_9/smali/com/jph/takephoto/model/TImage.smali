.class public Lcom/jph/takephoto/model/TImage;
.super Ljava/lang/Object;
.source "TImage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/model/TImage$FromType;
    }
.end annotation


# instance fields
.field private compressPath:Ljava/lang/String;

.field private compressed:Z

.field private cropped:Z

.field private fromType:Lcom/jph/takephoto/model/TImage$FromType;

.field private originalPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/jph/takephoto/model/TImage;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jph/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/jph/takephoto/model/TImage;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method public static of(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;
    .locals 1

    .line 23
    new-instance v0, Lcom/jph/takephoto/model/TImage;

    invoke-direct {v0, p0, p1}, Lcom/jph/takephoto/model/TImage;-><init>(Landroid/net/Uri;Lcom/jph/takephoto/model/TImage$FromType;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/TImage;
    .locals 1

    .line 20
    new-instance v0, Lcom/jph/takephoto/model/TImage;

    invoke-direct {v0, p0, p1}, Lcom/jph/takephoto/model/TImage;-><init>(Ljava/lang/String;Lcom/jph/takephoto/model/TImage$FromType;)V

    return-object v0
.end method


# virtual methods
.method public getCompressPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jph/takephoto/model/TImage;->compressPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFromType()Lcom/jph/takephoto/model/TImage$FromType;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jph/takephoto/model/TImage;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-object v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jph/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/jph/takephoto/model/TImage;->compressed:Z

    return v0
.end method

.method public isCropped()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/jph/takephoto/model/TImage;->cropped:Z

    return v0
.end method

.method public setCompressPath(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jph/takephoto/model/TImage;->compressPath:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/jph/takephoto/model/TImage;->compressed:Z

    return-void
.end method

.method public setCropped(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/jph/takephoto/model/TImage;->cropped:Z

    return-void
.end method

.method public setFromType(Lcom/jph/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jph/takephoto/model/TImage;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jph/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    return-void
.end method
