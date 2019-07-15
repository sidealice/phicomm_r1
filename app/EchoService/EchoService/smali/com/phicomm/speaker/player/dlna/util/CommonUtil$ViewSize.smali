.class public Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/dlna/util/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewSize"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput v0, p0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->width:I

    .line 185
    iput v0, p0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->height:I

    return-void
.end method
