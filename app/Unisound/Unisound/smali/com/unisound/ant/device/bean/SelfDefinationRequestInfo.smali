.class public Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;
.super Ljava/lang/Object;
.source "SelfDefinationRequestInfo.java"


# static fields
.field public static final AUDITION_RINGING:Ljava/lang/String; = "audition"

.field public static final AUDITION_TTS_SPEAKER:Ljava/lang/String; = "auditionTtsSpeaker"

.field public static final CHECK_DEVICE_STATE:Ljava/lang/String; = "checkDeviceStateManager"

.field public static final CURRENT_AMBIENT_LIGHT_STATUS:Ljava/lang/String; = "currentAmbientLightStatus"

.field public static final CURRENT_DORMANT_STATUS:Ljava/lang/String; = "currentDormantStatus"

.field public static final GET_AMBIENT_LIGHT_STATUS:Ljava/lang/String; = "getAmbientLightStatus"

.field public static final GET_DEVICE_INFO:Ljava/lang/String; = "getDeviceInfoManager"

.field public static final GET_DORMANT_STATUS:Ljava/lang/String; = "getDormantStatus"

.field public static final GET_LIGHTING_STATUS:Ljava/lang/String; = "getLightingStatusManager"

.field public static final MODIFY_AMBIENT_LIGHT_STATUS:Ljava/lang/String; = "modifyAmbientLightStatus"

.field public static final MODIFY_DORMANT_LIGHT_STATUS:Ljava/lang/String; = "modifyDormantLightStatus"

.field public static final MODIFY_DORMANT_STATUS:Ljava/lang/String; = "modifyDormantStatus"

.field public static final MODIFY_TTS_PLAYER:Ljava/lang/String; = "modifyTtsPlayer"

.field public static final MODIFY_WAKE_UP_WORD:Ljava/lang/String; = "modifyWakeUpWord"

.field public static final RESET_DEVICE:Ljava/lang/String; = "resetDevice"


# instance fields
.field private content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private operationType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->content:Ljava/util/Map;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->content:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->operationType:Ljava/lang/String;

    .line 51
    return-void
.end method
