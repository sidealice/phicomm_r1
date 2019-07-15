.class public interface abstract Lcom/unisound/vui/engine/ANTEngineConfig;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getLocalConfiguration()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
.end method

.method public abstract getMainTag()Ljava/lang/String;
.end method

.method public abstract getMainVocab()Ljava/util/Map;
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
.end method

.method public abstract getMessageCodec()Lcom/unisound/vui/transport/MessageCodec;
.end method

.method public abstract getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupOneshotTag()Ljava/lang/String;
.end method

.method public abstract getWakeupTag()Ljava/lang/String;
.end method

.method public abstract isPrintEngineLog()Z
.end method

.method public abstract setLocalConfiguration(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract setMainTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract setMainVocab(Ljava/util/Map;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unisound/vui/engine/ANTEngineConfig;"
        }
    .end annotation
.end method

.method public abstract setMessageCodec(Lcom/unisound/vui/transport/MessageCodec;)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;TT;)Z"
        }
    .end annotation
.end method

.method public abstract setOptions(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;*>;)Z"
        }
    .end annotation
.end method

.method public abstract setPrintEngineLog(Z)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract setWakeupOneshotTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract setWakeupTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
.end method
