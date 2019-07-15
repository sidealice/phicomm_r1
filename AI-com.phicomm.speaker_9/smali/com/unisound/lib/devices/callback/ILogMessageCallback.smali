.class public interface abstract Lcom/unisound/lib/devices/callback/ILogMessageCallback;
.super Ljava/lang/Object;
.source "ILogMessageCallback.java"


# virtual methods
.method public abstract onFailed(I)V
.end method

.method public abstract onResult(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
