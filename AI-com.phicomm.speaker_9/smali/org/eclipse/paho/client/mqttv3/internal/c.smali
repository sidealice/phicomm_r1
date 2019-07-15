.class public Lorg/eclipse/paho/client/mqttv3/internal/c;
.super Ljava/lang/Object;
.source "ClientState.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private A:Ljava/util/Hashtable;

.field private B:Ljava/util/Hashtable;

.field private C:Ljava/util/Hashtable;

.field private D:Ljava/util/Hashtable;

.field private E:Lorg/eclipse/paho/client/mqttv3/r;

.field private d:I

.field private e:Ljava/util/Hashtable;

.field private volatile f:Ljava/util/Vector;

.field private volatile g:Ljava/util/Vector;

.field private h:Lorg/eclipse/paho/client/mqttv3/internal/g;

.field private i:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private j:Lorg/eclipse/paho/client/mqttv3/internal/d;

.field private k:J

.field private l:Z

.field private m:Lorg/eclipse/paho/client/mqttv3/m;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Z

.field private t:J

.field private u:J

.field private v:J

.field private w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

.field private x:Ljava/lang/Object;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->a:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 99
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/internal/g;Lorg/eclipse/paho/client/mqttv3/internal/d;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 115
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    .line 120
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    .line 121
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 122
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    .line 125
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    .line 126
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    const-wide/16 v2, 0x0

    .line 128
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    .line 129
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    .line 130
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->v:J

    .line 132
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    .line 133
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    .line 135
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->z:Z

    .line 137
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    .line 138
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    .line 139
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    .line 140
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    .line 142
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->E:Lorg/eclipse/paho/client/mqttv3/r;

    .line 147
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v3, "<Init>"

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    .line 151
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    .line 152
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    .line 153
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    .line 154
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    .line 155
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    .line 156
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/b/i;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/i;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 157
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    .line 158
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 160
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    .line 161
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    .line 162
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 163
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 164
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->E:Lorg/eclipse/paho/client/mqttv3/r;

    .line 166
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d()V

    return-void
.end method

.method private a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7

    .line 274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 276
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 283
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v2

    const v6, 0xffff

    sub-int/2addr v6, v3

    add-int/2addr v6, v2

    if-le v6, v4, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v2, v6

    .line 300
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    :goto_3
    if-lt v1, v6, :cond_2

    return-object v0

    .line 306
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 301
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v6

    sub-int v3, v6, v3

    if-le v3, v4, :cond_5

    move v5, v2

    move v4, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 227
    :try_start_0
    invoke-static {p2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(Lorg/eclipse/paho/client/mqttv3/q;)Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 231
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "restoreMessage"

    const-string v5, "602"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 232
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 235
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {p2, p1}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 243
    :goto_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "restoreMessage"

    const-string v5, "601"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object p2, v6, v1

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 239
    :cond_1
    throw p2
.end method

.method private a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 3

    .line 253
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v0

    const/4 v1, 0x0

    .line 254
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 262
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 256
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 258
    invoke-virtual {p1, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized d(I)V
    .locals 2

    monitor-enter p0

    .line 1215
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1214
    monitor-exit p0

    throw p1
.end method

.method private e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sb-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l()V
    .locals 10

    .line 427
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    .line 428
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    .line 430
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 431
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 447
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 448
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 458
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    .line 468
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    return-void

    .line 459
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 460
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 462
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "restoreInflightMessages"

    const-string v8, "512"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v1, v9, v2

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-direct {p0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    goto :goto_2

    .line 449
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 450
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 451
    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->a(Z)V

    .line 453
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "restoreInflightMessages"

    const-string v8, "612"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v0, v9, v2

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-direct {p0, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    goto :goto_1

    .line 432
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 433
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 434
    instance-of v5, v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    if-eqz v5, :cond_4

    .line 436
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "restoreInflightMessages"

    const-string v8, "610"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v1, v9, v2

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(Z)V

    .line 439
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-direct {p0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    goto/16 :goto_0

    .line 440
    :cond_4
    instance-of v5, v4, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    if-eqz v5, :cond_0

    .line 442
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "restoreInflightMessages"

    const-string v8, "611"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-interface {v5, v6, v7, v8, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    invoke-direct {p0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    goto/16 :goto_0
.end method

.method private m()V
    .locals 9

    .line 877
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_0
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 880
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "decrementInFlight"

    const-string v5, "646"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    invoke-interface {v1, v3, v4, v5, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 877
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized n()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    monitor-enter p0

    .line 1225
    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    const/4 v1, 0x0

    .line 1230
    :cond_0
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    .line 1231
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    const v4, 0xffff

    if-le v2, v4, :cond_1

    .line 1232
    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    .line 1234
    :cond_1
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v0, 0x7d01

    .line 1237
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 1240
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1242
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1224
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    return-wide v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;
    .locals 6

    .line 1149
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "resolveOldTokens"

    const-string v3, "632"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1156
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v0, 0x7d66

    invoke-direct {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->c()Ljava/util/Vector;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1165
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 1166
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/s;

    .line 1167
    monitor-enter v2

    .line 1168
    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/s;->i()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/t;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/s;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1169
    iget-object v3, v2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 1167
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/o;

    if-nez v3, :cond_1

    .line 1175
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    iget-object v2, v2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/s;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1167
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 647
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "616"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v3, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    monitor-enter v3

    .line 652
    :try_start_0
    iget-boolean v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 653
    monitor-exit v3

    return-object v5

    .line 649
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 658
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a()J

    .line 660
    iget-boolean v3, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->z:Z

    if-eqz v3, :cond_7

    iget-wide v3, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-lez v6, :cond_7

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v6, 0x64

    .line 667
    iget-object v8, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    monitor-enter v8

    .line 670
    :try_start_1
    iget v9, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-lez v9, :cond_1

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    sub-long v17, v3, v12

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    int-to-long v14, v6

    add-long v19, v12, v14

    cmp-long v9, v17, v19

    if-ltz v9, :cond_1

    .line 675
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v9, "619"

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/Long;

    iget-wide v13, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    invoke-direct {v12, v13, v14}, Ljava/lang/Long;-><init>(J)V

    aput-object v12, v11, v7

    new-instance v7, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    invoke-direct {v7, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/4 v12, 0x1

    aput-object v7, v11, v12

    new-instance v7, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    invoke-direct {v7, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/4 v12, 0x2

    aput-object v7, v11, v12

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x3

    aput-object v7, v11, v3

    new-instance v3, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->v:J

    invoke-direct {v3, v12, v13}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v11, v10

    invoke-interface {v2, v5, v6, v9, v11}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x7d00

    .line 679
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 683
    :cond_1
    iget v9, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    if-nez v9, :cond_2

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    sub-long v17, v3, v12

    const-wide/16 v12, 0x2

    iget-wide v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    mul-long/2addr v12, v5

    cmp-long v5, v17, v12

    if-ltz v5, :cond_2

    .line 686
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v9, "642"

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/Long;

    iget-wide v13, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    invoke-direct {v12, v13, v14}, Ljava/lang/Long;-><init>(J)V

    aput-object v12, v11, v7

    new-instance v7, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    invoke-direct {v7, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/4 v12, 0x1

    aput-object v7, v11, v12

    new-instance v7, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    invoke-direct {v7, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/4 v12, 0x2

    aput-object v7, v11, v12

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x3

    aput-object v7, v11, v3

    new-instance v3, Ljava/lang/Long;

    iget-wide v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->v:J

    invoke-direct {v3, v12, v13}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v11, v10

    invoke-interface {v2, v5, v6, v9, v11}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x7d02

    .line 690
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 702
    :cond_2
    iget v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    if-nez v5, :cond_3

    iget-wide v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    sub-long v9, v3, v5

    iget-wide v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    const/16 v11, 0x64

    int-to-long v12, v11

    sub-long v17, v5, v12

    cmp-long v5, v9, v17

    if-gez v5, :cond_4

    .line 703
    :cond_3
    iget-wide v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    sub-long v9, v3, v5

    iget-wide v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    const/16 v11, 0x64

    int-to-long v11, v11

    sub-long v13, v5, v11

    cmp-long v5, v9, v13

    if-ltz v5, :cond_6

    .line 706
    :cond_4
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "620"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v10, v9, v7

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-interface {v3, v4, v5, v6, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 712
    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 714
    :cond_5
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 715
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    invoke-virtual {v2, v4, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a()J

    move-result-wide v4

    .line 720
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h()V

    goto :goto_0

    .line 723
    :cond_6
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v9, "634"

    const/4 v10, 0x0

    invoke-interface {v2, v5, v6, v9, v10}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    .line 724
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a()J

    move-result-wide v11

    iget-wide v13, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    sub-long v15, v3, v13

    sub-long v2, v11, v15

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v3, v10

    .line 667
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v8, "checkForActivity"

    const-string v9, "624"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v10, v7

    invoke-interface {v2, v6, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->E:Lorg/eclipse/paho/client/mqttv3/r;

    invoke-interface {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/r;->a(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 667
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_7
    move-object v10, v5

    move-object v3, v10

    :goto_1
    return-object v3

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 649
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected a(I)V
    .locals 1

    .line 170
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    .line 171
    new-instance p1, Ljava/util/Vector;

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    return-void
.end method

.method protected a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 174
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->k:J

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    .line 924
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedAck"

    const-string v3, "627"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 925
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 924
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v0

    if-nez v0, :cond_0

    .line 932
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedAck"

    const-string v3, "662"

    new-array v4, v5, [Ljava/lang/Object;

    .line 933
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result p1

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    .line 932
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 934
    :cond_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/m;

    if-eqz v1, :cond_1

    .line 939
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/b/m;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/n;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/b/m;)V

    .line 940
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto/16 :goto_1

    .line 941
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/k;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 947
    :cond_2
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/j;

    if-eqz v1, :cond_4

    .line 948
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_0
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    sub-int/2addr v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    .line 950
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 951
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    if-nez v0, :cond_3

    .line 952
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 948
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v1, "notifyReceivedAck"

    const-string v2, "636"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 948
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 957
    :cond_4
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/c;

    if-eqz v1, :cond_7

    .line 958
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/b/c;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/c;->d_()I

    move-result v3

    if-nez v3, :cond_6

    .line 960
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 961
    :try_start_2
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->l:Z

    if-eqz v3, :cond_5

    .line 962
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->c()V

    .line 965
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v3, v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 967
    :cond_5
    iput v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    .line 968
    iput v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 969
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->l()V

    .line 970
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->g()V

    .line 960
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 977
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/c;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 978
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 979
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 982
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 983
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 982
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 960
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 973
    :cond_6
    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    .line 974
    throw p1

    .line 986
    :cond_7
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 987
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(I)V

    .line 988
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    goto :goto_1

    .line 944
    :cond_8
    :goto_0
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 991
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v3, "undo"

    const-string v4, "618"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 611
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 613
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 618
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v1

    if-lez v1, :cond_1

    .line 620
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(I)V

    .line 622
    invoke-virtual {p1, v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->a(I)V

    .line 625
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    .line 606
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 7

    .line 561
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 565
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->n()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(I)V

    .line 566
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_2

    .line 568
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    move-object v4, p1

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 571
    :catch_0
    :try_start_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "persistBufferedMessage"

    const-string v6, "515"

    invoke-interface {v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/paho/client/mqttv3/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-interface {v0, v3, p1}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V

    .line 576
    :goto_0
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "persistBufferedMessage"

    const-string v5, "513"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-interface {p1, v0, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-object v0, v3

    .line 579
    :catch_2
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "persistBufferedMessage"

    const-string v5, "513"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-interface {p1, v3, v4, v5, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->i_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->a(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 487
    :try_start_0
    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    :cond_1
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_1
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    if-lt v4, v5, :cond_2

    .line 496
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v1, "send"

    const-string v4, "613"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    invoke-interface {p1, p2, v1, v4, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7dca

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1

    .line 501
    :cond_2
    move-object v4, p1

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v4

    .line 503
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "send"

    const-string v8, "628"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v9, v2

    aput-object p1, v9, v1

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 507
    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V

    .line 515
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 516
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 517
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 521
    :cond_3
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "send"

    const-string v6, "615"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v1, v3

    aput-object p1, v1, v2

    invoke-interface {v0, v4, v5, v6, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    if-eqz v0, :cond_4

    .line 524
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 528
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {p2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 529
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 524
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 532
    :cond_4
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/i;

    if-eqz v0, :cond_5

    .line 533
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    goto :goto_1

    .line 535
    :cond_5
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    if-eqz v0, :cond_6

    .line 536
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V

    goto :goto_1

    .line 539
    :cond_6
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    if-eqz v0, :cond_7

    .line 540
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->g(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 543
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    if-nez v1, :cond_8

    .line 545
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 547
    :cond_8
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 548
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 543
    monitor-exit v0

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 9

    .line 1107
    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 1108
    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->g()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1111
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/m;

    if-nez v3, :cond_0

    .line 1113
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "notifyResult"

    const-string v6, "648"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object p1, v7, v1

    aput-object p3, v7, v0

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v3, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/s;)V

    :cond_0
    if-nez p1, :cond_1

    .line 1120
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "notifyResult"

    const-string v5, "649"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    aput-object p3, v0, v1

    invoke-interface {p1, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/s;)V

    :cond_1
    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1060
    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->l()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1062
    instance-of v1, v0, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    if-eqz v1, :cond_2

    .line 1065
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v3, "notifyComplete"

    const-string v4, "629"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1066
    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    aput-object v0, v5, p1

    .line 1065
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    move-object v1, v0

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    .line 1070
    instance-of v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/b/k;

    if-eqz v2, :cond_0

    .line 1073
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1074
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1075
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->m()V

    .line 1077
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(I)V

    .line 1078
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 1080
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifyComplete"

    const-string v3, "650"

    .line 1081
    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    .line 1080
    invoke-interface {p1, v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1082
    :cond_0
    instance-of v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    if-eqz v2, :cond_1

    .line 1084
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1086
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1087
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    .line 1090
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->m()V

    .line 1091
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(I)V

    .line 1092
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 1095
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v3, "notifyComplete"

    const-string v4, "645"

    new-array p1, p1, [Ljava/lang/Object;

    .line 1096
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/b;->j()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, p1, v7

    .line 1097
    new-instance v1, Ljava/lang/Integer;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, p1, v6

    .line 1095
    invoke-interface {v0, v2, v3, v4, p1}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    :cond_2
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->l:Z

    return-void
.end method

.method public b(I)V
    .locals 7

    if-lez p1, :cond_0

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    .line 832
    :cond_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifySentBytes"

    const-string v3, "643"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 833
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 832
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1258
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "quiesce"

    const-string v3, "637"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_0
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    .line 1259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1263
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b()V

    .line 1264
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h()V

    .line 1266
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->e()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1272
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    :cond_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "quiesce"

    const-string v6, "639"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v7

    new-instance v9, Ljava/lang/Integer;

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v4

    const/4 v4, 0x2

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v4

    const/4 v4, 0x3

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v4

    invoke-interface {v2, v3, v5, v6, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1266
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1288
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 1289
    :try_start_3
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1290
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1291
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    .line 1292
    iput v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 1288
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1295
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v0, "quiesce"

    const-string v1, "640"

    invoke-interface {p1, p2, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 1288
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 1266
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_2
    move-exception p1

    .line 1259
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 6

    .line 1188
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "disconnected"

    const-string v3, "633"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1190
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->z:Z

    .line 1193
    :try_start_0
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->l:Z

    if-eqz p1, :cond_0

    .line 1194
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->c()V

    .line 1197
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1198
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1199
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :try_start_1
    iput v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    .line 1199
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected b(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 1312
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "deliveryComplete"

    const-string v3, "641"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->g(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 590
    :try_start_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "unPersistBufferedMessage"

    const-string v5, "517"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->h(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "unPersistBufferedMessage"

    const-string v5, "518"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->l:Z

    return v0
.end method

.method protected c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "clearState"

    const-string v3, ">"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/m;->c()V

    .line 212
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 213
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 214
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 215
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 216
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 217
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 218
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 219
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->d()V

    return-void
.end method

.method public c(I)V
    .locals 7

    if-lez p1, :cond_0

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    .line 909
    :cond_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedBytes"

    const-string v3, "630"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 910
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 909
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 8

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->t:J

    .line 846
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifySent"

    const-string v3, "625"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v0

    .line 849
    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->i()V

    .line 850
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/i;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 853
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->x:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 854
    :try_start_1
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->v:J

    .line 855
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    .line 853
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    :try_start_2
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifySent"

    const-string v3, "635"

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->y:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-interface {p1, v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 853
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 851
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 861
    :cond_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    if-eqz v1, :cond_1

    .line 862
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v1

    if-nez v1, :cond_1

    .line 865
    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 866
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 867
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->m()V

    .line 868
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(I)V

    .line 869
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    .line 870
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/m;->b()Ljava/util/Enumeration;

    move-result-object v0

    .line 321
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    .line 322
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 324
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "restoreState"

    const-string v6, "600"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 413
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 414
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->d:I

    return-void

    .line 415
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "restoreState"

    const-string v8, "609"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-interface {v2, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v2, v0}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v6, v3}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/q;

    move-result-object v6

    .line 329
    invoke-direct {p0, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "r-"

    .line 331
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 333
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v10, "restoreState"

    const-string v11, "604"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v7, v9, v10, v11, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v7, "s-"

    .line 337
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 338
    move-object v7, v6

    check-cast v7, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 339
    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 340
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/eclipse/paho/client/mqttv3/m;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 341
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/q;

    move-result-object v9

    .line 345
    invoke-direct {p0, v3, v9}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v9

    check-cast v9, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    if-eqz v9, :cond_4

    .line 349
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v11, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v12, "restoreState"

    const-string v13, "605"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v10, v11, v12, v13, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/b/n;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 354
    :cond_4
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "606"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 359
    :cond_5
    invoke-virtual {v7, v5}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->a(Z)V

    .line 360
    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v9

    if-ne v9, v8, :cond_6

    .line 362
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "607"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 367
    :cond_6
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "608"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :goto_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v3, v7}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)Lorg/eclipse/paho/client/mqttv3/o;

    move-result-object v3

    .line 373
    iget-object v3, v3, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/d;)V

    .line 374
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v7, "sb-"

    .line 375
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 378
    move-object v7, v6

    check-cast v7, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 379
    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 380
    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v9

    if-ne v9, v8, :cond_8

    .line 382
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "607"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 384
    :cond_8
    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v9

    if-ne v9, v5, :cond_9

    .line 386
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "608"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 392
    :cond_9
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v11, "restoreState"

    const-string v12, "511"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    invoke-interface {v9, v10, v11, v12, v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v4, v3}, Lorg/eclipse/paho/client/mqttv3/m;->b(Ljava/lang/String;)V

    .line 399
    :goto_3
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v3, v7}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)Lorg/eclipse/paho/client/mqttv3/o;

    move-result-object v3

    .line 400
    iget-object v3, v3, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/d;)V

    .line 401
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v4, "sc-"

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    check-cast v6, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    .line 406
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, v6}, Lorg/eclipse/paho/client/mqttv3/internal/c;->e(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/eclipse/paho/client/mqttv3/m;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected d(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->u:J

    .line 1006
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "notifyReceivedMsg"

    const-string v3, "651"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1007
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 1006
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    if-nez v0, :cond_2

    .line 1010
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1011
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 1012
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1020
    :pswitch_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->g(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/q;)V

    .line 1022
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/b/m;

    invoke-direct {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/b/m;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto :goto_0

    .line 1015
    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    if-eqz p1, :cond_2

    .line 1016
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    goto :goto_0

    .line 1029
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    .line 1031
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    if-eqz v0, :cond_1

    .line 1033
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    if-eqz p1, :cond_2

    .line 1034
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    goto :goto_0

    .line 1038
    :cond_1
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    .line 1039
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->j()I

    move-result p1

    .line 1038
    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/l;-><init>(I)V

    .line 1040
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected e()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 756
    :cond_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 757
    :cond_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v4, :cond_4

    .line 760
    :cond_3
    :try_start_1
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "644"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 765
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "647"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    :catch_0
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->z:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 774
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    instance-of v3, v3, Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    if-nez v3, :cond_6

    .line 776
    :cond_5
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "get"

    const-string v5, "621"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    monitor-exit v0

    return-object v1

    .line 788
    :cond_6
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_8

    .line 790
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 791
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/b/n;

    if-eqz v3, :cond_7

    .line 792
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    .line 795
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "617"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z

    goto/16 :goto_0

    .line 799
    :cond_8
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 803
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    if-ge v3, v6, :cond_9

    .line 806
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 807
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 808
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    .line 811
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "623"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 814
    :cond_9
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "622"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected f()Z
    .locals 10

    .line 891
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->e()I

    move-result v0

    .line 892
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v4, "checkQuiesceLock"

    const-string v5, "626"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Boolean;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->s:Z

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v2

    new-instance v2, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v2

    const/4 v2, 0x3

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->p:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v2

    const/4 v2, 0x4

    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/d;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v2

    const/4 v2, 0x5

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v2

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 895
    monitor-exit v0

    return v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return v2
.end method

.method public g()V
    .locals 4

    .line 1131
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v2, "connected"

    const-string v3, "631"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->z:Z

    .line 1134
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->E:Lorg/eclipse/paho/client/mqttv3/r;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/r;->a()V

    return-void
.end method

.method public h()V
    .locals 5

    .line 1301
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/c;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/c;->b:Ljava/lang/String;

    const-string v3, "notifyQueueLock"

    const-string v4, "638"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()I
    .locals 1

    .line 1329
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->o:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1333
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->n:I

    return v0
.end method

.method protected k()V
    .locals 1

    .line 1342
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1343
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1344
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1345
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1346
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1347
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1348
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1349
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;->d()V

    const/4 v0, 0x0

    .line 1350
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->e:Ljava/util/Hashtable;

    .line 1351
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->f:Ljava/util/Vector;

    .line 1352
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->g:Ljava/util/Vector;

    .line 1353
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->A:Ljava/util/Hashtable;

    .line 1354
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->B:Ljava/util/Hashtable;

    .line 1355
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->C:Ljava/util/Hashtable;

    .line 1356
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->D:Ljava/util/Hashtable;

    .line 1357
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->h:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 1358
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->j:Lorg/eclipse/paho/client/mqttv3/internal/d;

    .line 1359
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->i:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 1360
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->m:Lorg/eclipse/paho/client/mqttv3/m;

    .line 1361
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/c;->w:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    return-void
.end method
