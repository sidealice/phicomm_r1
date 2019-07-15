.class public Lcom/jph/takephoto/compress/CompressConfig$Builder;
.super Ljava/lang/Object;
.source "CompressConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/compress/CompressConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/jph/takephoto/compress/CompressConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/jph/takephoto/compress/CompressConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jph/takephoto/compress/CompressConfig;-><init>(Lcom/jph/takephoto/compress/CompressConfig$1;)V

    iput-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    return-void
.end method


# virtual methods
.method public create()Lcom/jph/takephoto/compress/CompressConfig;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    return-object v0
.end method

.method public enablePixelCompress(Z)Lcom/jph/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/compress/CompressConfig;->enablePixelCompress(Z)V

    return-object p0
.end method

.method public enableQualityCompress(Z)Lcom/jph/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/compress/CompressConfig;->enableQualityCompress(Z)V

    return-object p0
.end method

.method public enableReserveRaw(Z)Lcom/jph/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/compress/CompressConfig;->enableReserveRaw(Z)V

    return-object p0
.end method

.method public setMaxPixel(I)Lcom/jph/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/compress/CompressConfig;->setMaxPixel(I)Lcom/jph/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method public setMaxSize(I)Lcom/jph/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressConfig$Builder;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/compress/CompressConfig;->setMaxSize(I)V

    return-object p0
.end method
