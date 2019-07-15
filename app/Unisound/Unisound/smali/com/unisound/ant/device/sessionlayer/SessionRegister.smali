.class public final Lcom/unisound/ant/device/sessionlayer/SessionRegister;
.super Ljava/lang/Object;
.source "SessionRegister.java"


# static fields
.field private static sessionExecuters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V
    .locals 1
    .param p0, "dstName"    # Ljava/lang/String;
    .param p1, "executerHandler"    # Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    .prologue
    .line 25
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method

.method public static getSessionExecuter(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
    .locals 1
    .param p0, "dstName"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    return-object v0
.end method

.method public static getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    return-object v0
.end method

.method public static saveUpDownMessageManager(Lcom/unisound/ant/device/message/UpDownMessageManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/unisound/ant/device/message/UpDownMessageManager;

    .prologue
    .line 17
    sput-object p0, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    .line 18
    return-void
.end method
