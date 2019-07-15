.class public Lcom/unisound/ant/device/netmodule/HttpReportUtils;
.super Ljava/lang/Object;
.source "HttpReportUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/unisound/ant/device/netmodule/HttpReportUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static httpReportASRLog(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V
    .locals 1
    .param p0, "udid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/ant/device/service/BaseRequest",
            "<",
            "Lcom/unisound/ant/device/bean/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "data":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<Lcom/unisound/ant/device/bean/SessionData;>;"
    new-instance v0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;-><init>(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->executeInSingle(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static httpReportMusicInfo(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V
    .locals 1
    .param p0, "udid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/ant/device/service/BaseRequest",
            "<",
            "Lcom/unisound/ant/device/bean/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "data":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<Lcom/unisound/ant/device/bean/SessionData;>;"
    new-instance v0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/unisound/ant/device/netmodule/HttpReportUtils$2;-><init>(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->executeInSingle(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
