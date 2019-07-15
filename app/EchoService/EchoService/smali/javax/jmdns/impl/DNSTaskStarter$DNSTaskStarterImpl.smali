.class public final Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSTaskStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSTaskStarterImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;
    }
.end annotation


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

.field private final _stateTimer:Ljava/util/Timer;

.field private final _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 3
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 266
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    .line 267
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").State.Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    .line 268
    return-void
.end method


# virtual methods
.method public cancelStateTimer()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 304
    return-void
.end method

.method public cancelTimer()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    return-void
.end method

.method public purgeStateTimer()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 286
    return-void
.end method

.method public purgeTimer()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 277
    return-void
.end method

.method public startAnnouncer()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Announcer;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Announcer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Announcer;->start(Ljava/util/Timer;)V

    .line 322
    return-void
.end method

.method public startCanceler()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Canceler;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Canceler;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Canceler;->start(Ljava/util/Timer;)V

    .line 340
    return-void
.end method

.method public startProber()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Prober;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;->start(Ljava/util/Timer;)V

    .line 313
    return-void
.end method

.method public startReaper()V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljavax/jmdns/impl/tasks/RecordReaper;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/RecordReaper;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/RecordReaper;->start(Ljava/util/Timer;)V

    .line 349
    return-void
.end method

.method public startRenewer()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Renewer;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;->start(Ljava/util/Timer;)V

    .line 331
    return-void
.end method

.method public startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "port"    # I

    .prologue
    .line 384
    new-instance v0, Ljavax/jmdns/impl/tasks/Responder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1, p2}, Ljavax/jmdns/impl/tasks/Responder;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;I)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/Responder;->start(Ljava/util/Timer;)V

    .line 385
    return-void
.end method

.method public startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 2
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .prologue
    .line 357
    new-instance v0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->start(Ljava/util/Timer;)V

    .line 358
    return-void
.end method

.method public startServiceResolver(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->start(Ljava/util/Timer;)V

    .line 376
    return-void
.end method

.method public startTypeResolver()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;->start(Ljava/util/Timer;)V

    .line 367
    return-void
.end method
