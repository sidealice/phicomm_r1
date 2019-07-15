.class public Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
.super Ljavax/jmdns/impl/ListenerStatus;
.source "ListenerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/ListenerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceTypeListenerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/jmdns/impl/ListenerStatus",
        "<",
        "Ljavax/jmdns/ServiceTypeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _addedTypes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/ServiceTypeListener;Z)V
    .locals 2
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;
    .param p2, "synch"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/ListenerStatus;-><init>(Ljava/util/EventListener;Z)V

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 167
    return-void
.end method


# virtual methods
.method serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 176
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceTypeListener;

    invoke-interface {v0, p1}, Ljavax/jmdns/ServiceTypeListener;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Type Added called for a service type already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceTypeListener;

    invoke-interface {v0, p1}, Ljavax/jmdns/ServiceTypeListener;->subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Sub Type Added called for a service sub type already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v3, "[Status for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceTypeListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const-string v3, " no type event "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
    :cond_0
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 217
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
