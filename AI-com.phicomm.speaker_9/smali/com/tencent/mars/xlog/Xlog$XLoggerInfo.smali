.class Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;
.super Ljava/lang/Object;
.source "Xlog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mars/xlog/Xlog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XLoggerInfo"
.end annotation


# instance fields
.field public filename:Ljava/lang/String;

.field public funcname:Ljava/lang/String;

.field public level:I

.field public line:I

.field public maintid:J

.field public pid:J

.field public tag:Ljava/lang/String;

.field public tid:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
