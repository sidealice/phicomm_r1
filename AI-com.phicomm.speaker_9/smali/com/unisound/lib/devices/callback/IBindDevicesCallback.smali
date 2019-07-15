.class public interface abstract Lcom/unisound/lib/devices/callback/IBindDevicesCallback;
.super Ljava/lang/Object;
.source "IBindDevicesCallback.java"


# virtual methods
.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;",
            ">;)V"
        }
    .end annotation
.end method
