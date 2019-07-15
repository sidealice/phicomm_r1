.class public Lcom/unisound/vui/handler/SessionRegister;
.super Ljava/lang/Object;


# static fields
.field public static final DEVICE_CENTER:Ljava/lang/String; = "device_center"

.field public static final NLU_FILTER:Ljava/lang/String; = "nlu_filter"

.field public static final SEESION_SWITCH_TTS_MODEL:Ljava/lang/String; = "seesion_switch_tts_model"

.field public static final SESSION_ALARM:Ljava/lang/String; = "session_alarm"

.field public static final SESSION_ANT_LAUNCH:Ljava/lang/String; = "session_launch"

.field public static final SESSION_APCONNECTION:Ljava/lang/String; = "session_apconnection"

.field public static final SESSION_BROADCAST:Ljava/lang/String; = "session_broadcast"

.field public static final SESSION_CHAT:Ljava/lang/String; = "session_chat"

.field public static final SESSION_CONNECTION:Ljava/lang/String; = "session_connection"

.field public static final SESSION_MANAGERAPP:Ljava/lang/String; = "session_managerapp"

.field public static final SESSION_MUSIC:Ljava/lang/String; = "session_music"

.field public static final SESSION_OTA:Ljava/lang/String; = "session_ota"

.field public static final SESSION_PLAYTTS:Ljava/lang/String; = "session_playtts"

.field public static final SESSION_PUSH:Ljava/lang/String; = "session_push"

.field public static final SESSION_REMINDER:Ljava/lang/String; = "session_reminder"

.field public static final SESSION_SCENEMODE:Ljava/lang/String; = "session_scenemode"

.field public static final SESSION_SETTING:Ljava/lang/String; = "session_setting"

.field public static final SESSION_STOCK:Ljava/lang/String; = "session_stock"

.field public static final SESSION_TRAFFIC_CONTROL:Ljava/lang/String; = "session_traffic_control"

.field public static final SESSION_UNSUPPORT:Ljava/lang/String; = "session_unsupport"

.field public static final SESSION_WEATHER:Ljava/lang/String; = "session_weather"

.field private static volatile instance:Lcom/unisound/vui/handler/SessionRegister;


# instance fields
.field private userSession:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/SessionRegister;->userSession:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/handler/SessionRegister;
    .locals 2

    sget-object v0, Lcom/unisound/vui/handler/SessionRegister;->instance:Lcom/unisound/vui/handler/SessionRegister;

    if-nez v0, :cond_1

    const-class v1, Lcom/unisound/vui/handler/SessionRegister;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/handler/SessionRegister;->instance:Lcom/unisound/vui/handler/SessionRegister;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/handler/SessionRegister;

    invoke-direct {v0}, Lcom/unisound/vui/handler/SessionRegister;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/SessionRegister;->instance:Lcom/unisound/vui/handler/SessionRegister;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unisound/vui/handler/SessionRegister;->instance:Lcom/unisound/vui/handler/SessionRegister;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getUserHandler(Ljava/lang/String;)Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/handler/SessionRegister;->userSession:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/SessionRegister;->userSession:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/handler/SessionRegister;->instance:Lcom/unisound/vui/handler/SessionRegister;

    return-void
.end method

.method public registerUserSession(Ljava/lang/String;Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simpleUserHandler"    # Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/handler/SessionRegister;->userSession:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/SessionRegister;->userSession:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userEventInboundHandler can\'t repeat to add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
