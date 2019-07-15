.class public Lorg/eclipse/paho/client/mqttv3/c/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Class; = null

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final d:Ljava/lang/String; = "=============="

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lorg/eclipse/paho/client/mqttv3/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "=============="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "=============="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "=========================================="

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x1c

    const/16 v5, 0x20

    invoke-static {v0, v4, v5}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ":  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->g()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->h()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->f()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->b()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->d()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->e()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/c/a;->c()V

    return-void
.end method

.method protected c()V
    .locals 1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->dumpTrace()V

    return-void
.end method

.method protected d()V
    .locals 5

    const/16 v4, 0x20

    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Version Info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Version"

    invoke-static {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Build Level"

    invoke-static {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "=========================================="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v3, "dumpVersion"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v3, "dumpSystemProperties"

    const-string v4, "SystemProperties"

    invoke-static {v0, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->m()Lorg/eclipse/paho/client/mqttv3/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->m()Lorg/eclipse/paho/client/mqttv3/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->j()Ljava/util/Properties;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v3, "dumpClientState"

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->f:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " : ClientState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->o()Ljava/util/Properties;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v3, "dumpClientComms"

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->f:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " : ClientComms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->n()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getDebug()Ljava/util/Properties;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/c/a;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/c/a;->b:Ljava/lang/String;

    const-string v3, "dumpConOptions"

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/c/a;->f:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " : Connect Options"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/paho/client/mqttv3/c/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
