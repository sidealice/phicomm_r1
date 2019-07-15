.class public Lcom/jph/takephoto/compress/CompressConfig;
.super Ljava/lang/Object;
.source "CompressConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/compress/CompressConfig$Builder;
    }
.end annotation


# instance fields
.field private enablePixelCompress:Z

.field private enableQualityCompress:Z

.field private enableReserveRaw:Z

.field private lubanOptions:Lcom/jph/takephoto/model/LubanOptions;

.field private maxPixel:I

.field private maxSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4b0

    .line 18
    iput v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxPixel:I

    const v0, 0x19000

    .line 22
    iput v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxSize:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    .line 31
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    .line 36
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jph/takephoto/compress/CompressConfig$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/jph/takephoto/compress/CompressConfig;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/jph/takephoto/model/LubanOptions;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4b0

    .line 18
    iput v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxPixel:I

    const v0, 0x19000

    .line 22
    iput v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxSize:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    .line 31
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    .line 36
    iput-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    .line 50
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->lubanOptions:Lcom/jph/takephoto/model/LubanOptions;

    return-void
.end method

.method public static ofDefaultConfig()Lcom/jph/takephoto/compress/CompressConfig;
    .locals 1

    .line 43
    new-instance v0, Lcom/jph/takephoto/compress/CompressConfig;

    invoke-direct {v0}, Lcom/jph/takephoto/compress/CompressConfig;-><init>()V

    return-object v0
.end method

.method public static ofLuban(Lcom/jph/takephoto/model/LubanOptions;)Lcom/jph/takephoto/compress/CompressConfig;
    .locals 1

    .line 46
    new-instance v0, Lcom/jph/takephoto/compress/CompressConfig;

    invoke-direct {v0, p0}, Lcom/jph/takephoto/compress/CompressConfig;-><init>(Lcom/jph/takephoto/model/LubanOptions;)V

    return-object v0
.end method


# virtual methods
.method public enablePixelCompress(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    return-void
.end method

.method public enableQualityCompress(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    return-void
.end method

.method public enableReserveRaw(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return-void
.end method

.method public getLubanOptions()Lcom/jph/takephoto/model/LubanOptions;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->lubanOptions:Lcom/jph/takephoto/model/LubanOptions;

    return-object v0
.end method

.method public getMaxPixel()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxPixel:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxSize:I

    return v0
.end method

.method public isEnablePixelCompress()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    return v0
.end method

.method public isEnableQualityCompress()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    return v0
.end method

.method public isEnableReserveRaw()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/jph/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return v0
.end method

.method public setMaxPixel(I)Lcom/jph/takephoto/compress/CompressConfig;
    .locals 0

    .line 61
    iput p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxPixel:I

    return-object p0
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jph/takephoto/compress/CompressConfig;->maxSize:I

    return-void
.end method
