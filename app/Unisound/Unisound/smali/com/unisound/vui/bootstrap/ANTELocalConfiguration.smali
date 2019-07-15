.class public final Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
    }
.end annotation


# static fields
.field public static final ENGINE_ASR:I = 0x1

.field public static final ENGINE_TTS:I = 0x2

.field public static final ENGINE_WAKEUP:I


# instance fields
.field private localConfiguration:Ljava/util/HashMap;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "localConfiguration"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localConfiguration"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addConfiguration(Ljava/lang/String;Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;)V
    .locals 1
    .param p1, "asrTag"    # Ljava/lang/String;
    .param p2, "localRecognition"    # Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contentTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLocalConfiguration()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLocalRecognition(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    return-object v0
.end method

.method public setLocalConfiguration(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "localConfiguration":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;>;"
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->localConfiguration:Ljava/util/HashMap;

    return-void
.end method
