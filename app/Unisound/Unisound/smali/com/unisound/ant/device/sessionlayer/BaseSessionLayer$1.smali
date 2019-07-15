.class Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "BaseSessionLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->filterSessionContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer$1;->this$0:Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
