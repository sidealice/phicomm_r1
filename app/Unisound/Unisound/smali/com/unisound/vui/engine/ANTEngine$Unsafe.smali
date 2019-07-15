.class public interface abstract Lcom/unisound/vui/engine/ANTEngine$Unsafe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/ANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Unsafe"
.end annotation


# virtual methods
.method public abstract cancelASR()V
.end method

.method public abstract cancelEngine()V
.end method

.method public abstract cancelTTS()V
.end method

.method public abstract enterASR()V
.end method

.method public abstract enterWakeup(Z)V
.end method

.method public abstract getOption(I)Ljava/lang/Object;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initEngine()V
.end method

.method public abstract initializeMode()V
.end method

.method public abstract initializeSdk()V
.end method

.method public abstract insertVocab(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract loadGrammar(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract markModeInitialized()V
.end method

.method public abstract playBuffer([B)V
.end method

.method public abstract playTTS(Ljava/lang/String;)V
.end method

.method public abstract release(ILjava/lang/String;)V
.end method

.method public abstract setASROption(ILjava/lang/Object;)V
.end method

.method public abstract setAndroidContext(Landroid/content/Context;)V
.end method

.method public abstract setMainTag(Ljava/lang/String;)V
.end method

.method public abstract setNLUOption(ILjava/lang/Object;)V
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setTTSOption(ILjava/lang/Object;)V
.end method

.method public abstract setWakeupWord(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract stopASR()V
.end method

.method public abstract stopWakeup()V
.end method

.method public abstract unloadGrammar(Ljava/lang/String;)I
.end method

.method public abstract updateCustomWakeupWord(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWakeupWord(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadUserData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;)V
.end method
