.class public final Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;
.super Ljava/lang/Object;
.source "SessionRegister.java"


# static fields
.field private static sessionExecuters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getSessionExecuter(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
    .locals 1

    .line 53
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->sessionExecuters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;

    return-object p0
.end method

.method public static getUpDownMessageManager()Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    return-object v0
.end method

.method public static saveUpDownMessageManager(Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    return-void
.end method
