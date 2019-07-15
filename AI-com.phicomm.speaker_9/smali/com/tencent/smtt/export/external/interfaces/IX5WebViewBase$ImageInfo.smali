.class public Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public mIsGif:Z

.field public mPicUrl:Ljava/lang/String;

.field public mRawDataSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mRawDataSize:J

    return-wide v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mIsGif:Z

    return v0
.end method
