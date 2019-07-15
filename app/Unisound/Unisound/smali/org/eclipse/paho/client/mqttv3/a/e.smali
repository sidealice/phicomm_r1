.class public Lorg/eclipse/paho/client/mqttv3/a/e;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Class; = null

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final d:Ljava/lang/String; = "s-"

.field private static final e:Ljava/lang/String; = "sc-"

.field private static final f:Ljava/lang/String; = "r-"

.field private static final g:I = 0xa

.field private static final h:I = 0x1

.field private static final i:I = 0xffff


# instance fields
.field private A:J

.field private B:J

.field private C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

.field private D:Ljava/lang/Object;

.field private E:I

.field private F:Z

.field private G:Ljava/util/Hashtable;

.field private H:Ljava/util/Hashtable;

.field private I:Ljava/util/Hashtable;

.field private J:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

.field private j:I

.field private k:Ljava/util/Hashtable;

.field private volatile l:Ljava/util/Vector;

.field private volatile m:Ljava/util/Vector;

.field private n:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private o:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private p:Lorg/eclipse/paho/client/mqttv3/a/f;

.field private q:J

.field private r:Z

.field private s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/a/i;Lorg/eclipse/paho/client/mqttv3/a/f;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->B:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->F:Z

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->J:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "<Init>"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/i;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/i;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->J:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->c()V

    return-void
.end method

.method private a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 8

    const/4 v2, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v0

    const v1, 0xffff

    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    if-le v0, v4, :cond_1

    move v3, v2

    :cond_1
    move v0, v3

    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :goto_3
    if-lt v2, v3, :cond_5

    move-object v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v6

    sub-int v0, v6, v5

    if-le v0, v4, :cond_3

    sub-int v4, v6, v5

    move v3, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v5, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "restoreMessage"

    const-string v4, "601"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object v0, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "restoreMessage"

    const-string v3, "602"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_0
    throw v5

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    .locals 3

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p1, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v3, :cond_2

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "restoreInflightMessages"

    const-string v6, "610"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(Z)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-direct {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    goto :goto_0

    :cond_2
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    if-eqz v3, :cond_0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "restoreInflightMessages"

    const-string v6, "611"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    invoke-direct {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {v0, v8}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a(Z)V

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "restoreInflightMessages"

    const-string v6, "612"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-direct {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    goto :goto_1
.end method

.method private l()V
    .locals 9

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "decrementInFlight"

    const-string v4, "646"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized m()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    const/4 v0, 0x0

    :cond_0
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    const v3, 0xffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    :cond_1
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    if-ne v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x7d01

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method


# virtual methods
.method protected a()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    return-wide v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;
    .locals 6

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "resolveOldTokens"

    const-string v3, "632"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v0, 0x7d66

    invoke-direct {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 7

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    :cond_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifySentBytes"

    const-string v3, "631"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->p()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "notifyComplete"

    const-string v4, "629"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    aput-object v1, v5, v10

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    instance-of v2, v0, Lorg/eclipse/paho/client/mqttv3/a/b/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->l()V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(I)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "notifyComplete"

    const-string v4, "650"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    :cond_1
    return-void

    :cond_2
    instance-of v2, v0, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->d(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->l()V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(I)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "notifyComplete"

    const-string v4, "645"

    new-array v5, v10, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    new-instance v0, Ljava/lang/Integer;

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v5, v9

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/b;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedAck"

    const-string v3, "627"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v1

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/m;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/a/b/m;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/n;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/m;)V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    return-void

    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/k;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/j;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedAck"

    const-string v3, "636"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/c;->b()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->r:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->b()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->k()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->g()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/c;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_6
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(I)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    goto/16 :goto_0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "undo"

    const-string v4, "618"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifySent"

    const-string v3, "625"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v1

    iget-object v0, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->l()V

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/i;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->B:J

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "notifySent"

    const-string v4, "635"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, v7, v7}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->l()V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(I)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    goto :goto_0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 11

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->m()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->a(I)V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    if-lt v1, v3, :cond_2

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v4, "send"

    const-string v5, "613"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7dca

    invoke-direct {v1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "send"

    const-string v6, "628"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    move-object v1, v0

    invoke-interface {v3, v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    move-object v1, v0

    invoke-interface {v3, v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "send"

    const-string v4, "615"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/d;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_4
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/i;

    if-eqz v1, :cond_7

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    :cond_6
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_7
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->d(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    invoke-interface {v2, v3, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_3

    :cond_8
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->e(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/m;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyResult"

    const-string v3, "648"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object p3, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyResult"

    const-string v3, "649"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->r:Z

    return-void
.end method

.method protected b()V
    .locals 4

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "clearState"

    const-string v3, ">"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->d()V

    return-void
.end method

.method public b(I)V
    .locals 7

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    :cond_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedBytes"

    const-string v3, "630"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    return-void
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "disconnected"

    const-string v3, "633"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->F:Z

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->b()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .locals 8

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "deliveryComplete"

    const-string v3, "641"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->e(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedMsg"

    const-string v3, "651"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->e(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-interface {v1, v2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/m;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/m;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    invoke-virtual {p0, v1, v8}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/l;-><init>(I)V

    invoke-virtual {p0, v0, v8}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected c()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->keys()Ljava/util/Enumeration;

    move-result-object v5

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "restoreState"

    const-string v4, "600"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_7

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v1, "r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v7, "restoreState"

    const-string v8, "604"

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v0, v9, v13

    aput-object v2, v9, v12

    invoke-interface {v1, v4, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->i()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "s-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->d(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->d(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    if-eqz v3, :cond_3

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v9, "restoreState"

    const-string v10, "605"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v0, v11, v13

    aput-object v2, v11, v12

    invoke-interface {v7, v8, v9, v10, v11}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/b/n;->i()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v8, "restoreState"

    const-string v9, "606"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v0, v10, v13

    aput-object v2, v10, v12

    invoke-interface {v3, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v12}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->a(Z)V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    if-ne v3, v14, :cond_5

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v8, "restoreState"

    const-string v9, "607"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v0, v10, v13

    aput-object v2, v10, v12

    invoke-interface {v3, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v8, "restoreState"

    const-string v9, "608"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v0, v10, v13

    aput-object v2, v10, v12

    invoke-interface {v3, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    const-string v1, "sc-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "restoreState"

    const-string v6, "609"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v13

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public c(J)V
    .locals 11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "quiesce"

    const-string v3, "637"

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->b()V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->h()V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->e()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/f;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v4, "quiesce"

    const-string v5, "639"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "quiesce"

    const-string v3, "640"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .locals 14

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "checkForActivity"

    const-string v3, "616"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a()J

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->F:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x64

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->D:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    if-lez v5, :cond_2

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    sub-long v6, v2, v6

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "619"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Long;

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->B:J

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v7, v2

    invoke-interface {v0, v1, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d00

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    if-nez v5, :cond_3

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x2

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "642"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Long;

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Long;

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->B:J

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v7, v2

    invoke-interface {v0, v1, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d02

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_3
    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    if-nez v5, :cond_4

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    sub-long v6, v2, v6

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    :cond_4
    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    sub-long v6, v2, v6

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    :cond_5
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "checkForActivity"

    const-string v3, "620"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->q:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->h()V

    move-wide v12, v0

    move-object v0, v2

    move-wide v2, v12

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "624"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v7, v8

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->J:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->schedule(J)V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v7, "634"

    const/4 v8, 0x0

    invoke-interface {v1, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    sub-long/2addr v2, v10

    sub-long v2, v8, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    goto :goto_1
.end method

.method protected e()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .locals 11

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v3

    move-object v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    monitor-exit v3

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_4

    :cond_3
    :try_start_1
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "644"

    invoke-interface {v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "647"

    invoke-interface {v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->F:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/a/b/d;

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v4, "get"

    const-string v5, "621"

    invoke-interface {v0, v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    instance-of v2, v0, Lorg/eclipse/paho/client/mqttv3/a/b/n;

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "617"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z

    move-object v2, v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    if-ge v0, v4, :cond_9

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/u;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "623"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "622"

    invoke-interface {v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method protected f()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/i;->e()I

    move-result v2

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/f;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v5, "checkQuiesceLock"

    const-string v6, "626"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Boolean;

    iget-boolean v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v7, v1

    new-instance v1, Ljava/lang/Integer;

    iget v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v7, v0

    const/4 v1, 0x2

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    const/4 v1, 0x3

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    const/4 v1, 0x4

    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/a/f;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x5

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->x:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public g()V
    .locals 4

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v2, "connected"

    const-string v3, "631"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->F:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->J:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->start()V

    return-void
.end method

.method public h()V
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/e;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/e;->b:Ljava/lang/String;

    const-string v3, "notifyQueueLock"

    const-string v4, "638"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->d()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->o:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->C:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    return-void
.end method

.method public j()Ljava/util/Properties;
    .locals 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "In use msgids"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pendingMessages"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->l:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pendingFlows"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->m:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maxInflight"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->t:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nextMsgID"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->j:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actualInFlight"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->u:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inFlightPubRels"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->v:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quiescing"

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pingoutstanding"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->E:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastOutboundActivity"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->z:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastInboundActivity"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->A:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "outboundQoS2"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->G:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "outboundQoS1"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->H:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inboundQoS2"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->I:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tokens"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/e;->n:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
