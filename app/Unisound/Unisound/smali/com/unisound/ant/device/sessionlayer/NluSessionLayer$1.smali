.class final Lcom/unisound/ant/device/sessionlayer/NluSessionLayer$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "NluSessionLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/sessionlayer/NluSessionLayer;->parseNluSessionContent(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/unisound/ant/device/service/CloudResponse",
        "<",
        "Lcom/unisound/ant/device/bean/SessionData",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
