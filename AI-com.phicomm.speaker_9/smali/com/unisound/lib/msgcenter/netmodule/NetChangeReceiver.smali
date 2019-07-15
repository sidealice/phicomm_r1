.class public Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;,
        Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateReceiverFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetChangeReceiver"


# instance fields
.field private context:Landroid/content/Context;

.field private isRegistedReveiver:Z

.field private netStateListenerIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->isRegistedReveiver:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;
    .locals 1

    .line 41
    sget-object v0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateReceiverFactory;->instance:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    return-object v0
.end method

.method private registerNetStateReceiver(Landroid/content/Context;)V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->isRegistedReveiver:Z

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->context:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.device.wifi.connected"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.device.wifi.disconnected"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.device.wifi.connecting"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->isRegistedReveiver:Z

    :cond_0
    return-void
.end method

.method private unregisterNetStateReceiver(Landroid/content/Context;)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->isRegistedReveiver:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->isRegistedReveiver:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addStateListener(Landroid/content/Context;Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;)V
    .locals 2

    const-string v0, "NetChangeReceiver"

    const-string v1, "addStateListener"

    .line 71
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetChangeReceiver"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetChangeReceiver OnReceiver action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.device.wifi.connected"

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 118
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    const-string p1, "NetChangeReceiver"

    const-string p2, "NetChangeReceiver OnReceiver Connected"

    .line 119
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;->onNetConnected()V

    goto :goto_0

    :cond_1
    const-string p2, "com.device.wifi.disconnected"

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    const-string p1, "NetChangeReceiver"

    const-string p2, "NetChangeReceiver OnReceiver Disconnected"

    .line 125
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;->onNetDisconnected()V

    goto :goto_1

    :cond_2
    const-string p2, "com.device.wifi.connecting"

    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    const-string p1, "NetChangeReceiver"

    const-string p2, "NetChangeReceiver OnReceiver Connecting"

    .line 131
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_2
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListenerIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;->onNetConnecting()V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method public registerCheckNetState(Landroid/content/Context;Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;)V
    .locals 2

    const-string v0, "NetChangeReceiver"

    const-string v1, "registerCheckNetState"

    .line 85
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    .line 90
    invoke-static {p1}, Lcom/unisound/lib/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p2}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;->onNetConnected()V

    :cond_1
    return-void
.end method

.method public removeStateListener(Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->netStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->unregisterNetStateReceiver(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
