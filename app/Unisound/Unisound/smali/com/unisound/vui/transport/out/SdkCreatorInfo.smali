.class public Lcom/unisound/vui/transport/out/SdkCreatorInfo;
.super Ljava/lang/Object;


# instance fields
.field private credentials:Lcom/unisound/vui/auth/BasicCredentials;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "credentials"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credentials"
    .end annotation
.end field

.field private engineOption:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "engineOption"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engineOption"
    .end annotation

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

.field private localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "localConfiguration"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localConfiguration"
    .end annotation
.end field

.field private mainVocab:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mainVocab"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mainVocab"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private maintag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "maintag"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintag"
    .end annotation
.end field

.field private wakeupWord:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "wakeupWord"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wakeupWord"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/unisound/vui/auth/BasicCredentials;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->credentials:Lcom/unisound/vui/auth/BasicCredentials;

    return-object v0
.end method

.method public getEngineOption()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->engineOption:Ljava/util/Map;

    return-object v0
.end method

.method public getLocalConfiguration()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object v0
.end method

.method public getMainVocab()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->mainVocab:Ljava/util/Map;

    return-object v0
.end method

.method public getMaintag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->maintag:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupWord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->wakeupWord:Ljava/util/List;

    return-object v0
.end method

.method public parseFromANTEngineOption(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lcom/unisound/vui/engine/ANTEngineOption<*>;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/ANTEngineOption;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setCredentials(Lcom/unisound/vui/auth/BasicCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/unisound/vui/auth/BasicCredentials;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->credentials:Lcom/unisound/vui/auth/BasicCredentials;

    return-void
.end method

.method public setEngineOption(Ljava/util/Map;)V
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
    .local p1, "engineOption":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->engineOption:Ljava/util/Map;

    return-void
.end method

.method public setLocalConfiguration(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)V
    .locals 0
    .param p1, "localConfiguration"    # Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-void
.end method

.method public setMainVocab(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mainVocab":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->mainVocab:Ljava/util/Map;

    return-void
.end method

.method public setMaintag(Ljava/lang/String;)V
    .locals 0
    .param p1, "maintag"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->maintag:Ljava/lang/String;

    return-void
.end method

.method public setWakeupWord(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/vui/transport/out/SdkCreatorInfo;->wakeupWord:Ljava/util/List;

    return-void
.end method

.method public toANTEngineOption(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/vui/engine/ANTEngineOption;->valueOf(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineOption;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method
