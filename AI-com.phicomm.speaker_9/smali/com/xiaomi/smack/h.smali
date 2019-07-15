.class public abstract Lcom/xiaomi/smack/h;
.super Lcom/xiaomi/smack/a;


# instance fields
.field protected o:Ljava/lang/Exception;

.field protected p:Ljava/net/Socket;

.field q:Ljava/lang/String;

.field protected r:Lcom/xiaomi/push/service/XMPushService;

.field protected volatile s:J

.field protected volatile t:J

.field protected volatile u:J

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/b;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/b;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/xiaomi/smack/h;->q:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/h;->s:J

    iput-wide v0, p0, Lcom/xiaomi/smack/h;->t:J

    iput-wide v0, p0, Lcom/xiaomi/smack/h;->u:J

    iput-object p1, p0, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private a(Lcom/xiaomi/smack/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/smack/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/b;->d()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/smack/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get bucket for host : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/smack/h;->b(Ljava/lang/String;)Lcom/xiaomi/network/b;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Integer;)V

    const/4 v5, 0x1

    if-eqz v13, :cond_0

    invoke-virtual {v13, v5}, Lcom/xiaomi/network/b;->a(Z)Ljava/util/ArrayList;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/xiaomi/smack/h;->u:J

    iget-object v2, v1, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget v7, v1, Lcom/xiaomi/smack/h;->b:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/xiaomi/smack/h;->b:I

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "begin to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/h;->s()Ljava/net/Socket;

    move-result-object v7

    iput-object v7, v1, Lcom/xiaomi/smack/h;->p:Ljava/net/Socket;

    invoke-static {v15, v3}, Lcom/xiaomi/network/d;->b(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    iget-object v8, v1, Lcom/xiaomi/smack/h;->p:Ljava/net/Socket;

    const/16 v9, 0x1f40

    invoke-virtual {v8, v7, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v7, "tcp connected"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/xiaomi/smack/h;->p:Ljava/net/Socket;

    invoke-virtual {v7, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v15, v1, Lcom/xiaomi/smack/h;->v:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/h;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/smack/l; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    iput-wide v8, v1, Lcom/xiaomi/smack/h;->c:J

    iput-object v2, v1, Lcom/xiaomi/smack/h;->k:Ljava/lang/String;

    if-eqz v13, :cond_2

    iget-wide v8, v1, Lcom/xiaomi/smack/h;->c:J

    const-wide/16 v10, 0x0

    move-object v6, v13

    move-object v7, v15

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/network/b;->b(Ljava/lang/String;JJ)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/xiaomi/smack/h;->u:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/xiaomi/smack/h;->c:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/smack/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move v7, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v12, v0

    move/from16 v18, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v0

    move/from16 v18, v5

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    move v5, v6

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move v7, v6

    move-object v6, v0

    :goto_1
    :try_start_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "abnormal exception"

    invoke-direct {v8, v9, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v8, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v7, :cond_3

    iget-object v6, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    invoke-static {v15, v6}, Lcom/xiaomi/c/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v6, v1, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/d/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move/from16 v18, v7

    goto/16 :goto_8

    :cond_3
    move v6, v7

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    move v5, v7

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v12, v0

    move/from16 v18, v6

    :goto_2
    if-eqz v13, :cond_4

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    const-wide/16 v10, 0x0

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v19, v12

    invoke-virtual/range {v6 .. v12}, Lcom/xiaomi/network/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    move-object/from16 v6, v19

    goto :goto_3

    :cond_4
    move-object v6, v12

    :goto_3
    iput-object v6, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMACK: Could not connect to:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    const-string v7, "SMACK: Could not connect to "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " port:"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaomi/smack/l;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v18, :cond_6

    iget-object v6, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    invoke-static {v15, v6}, Lcom/xiaomi/c/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v6, v1, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/d/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object v12, v0

    move/from16 v18, v6

    :goto_4
    if-eqz v13, :cond_5

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    const-wide/16 v10, 0x0

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v20, v12

    invoke-virtual/range {v6 .. v12}, Lcom/xiaomi/network/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    move-object/from16 v6, v20

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v0

    move/from16 v5, v18

    goto :goto_6

    :cond_5
    move-object v6, v12

    :goto_5
    iput-object v6, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMACK: Could not connect to:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    const-string v7, "SMACK: Could not connect to "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " port:"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v18, :cond_6

    iget-object v6, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    invoke-static {v15, v6}, Lcom/xiaomi/c/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v6, v1, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/d/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_8

    :cond_6
    move/from16 v6, v18

    goto/16 :goto_0

    :goto_6
    if-nez v5, :cond_7

    iget-object v4, v1, Lcom/xiaomi/smack/h;->o:Ljava/lang/Exception;

    invoke-static {v15, v4}, Lcom/xiaomi/c/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v4, v1, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/d/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_7
    move/from16 v18, v5

    goto :goto_8

    :cond_7
    throw v3

    :cond_8
    move/from16 v18, v6

    :goto_8
    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/network/f;->h()V

    if-nez v18, :cond_9

    new-instance v2, Lcom/xiaomi/smack/l;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    return-void
.end method


# virtual methods
.method protected declared-synchronized a(ILjava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->m()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/xiaomi/smack/h;->a(IILjava/lang/Exception;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/smack/h;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/xiaomi/smack/h;->p:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    const-wide/16 p1, 0x0

    :try_start_3
    iput-wide p1, p0, Lcom/xiaomi/smack/h;->s:J

    iput-wide p1, p0, Lcom/xiaomi/smack/h;->t:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/h;->u:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x493e0

    cmp-long v2, v4, v0

    const/4 v0, 0x0

    if-gez v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaomi/smack/h;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/smack/h;->w:I

    iget v1, p0, Lcom/xiaomi/smack/h;->w:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max short conn time reached, sink down current host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/xiaomi/smack/h;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    :cond_0
    iput v0, p0, Lcom/xiaomi/smack/h;->w:I

    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 10

    invoke-static {}, Lcom/xiaomi/smack/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/network/f;->a(Ljava/lang/String;Z)Lcom/xiaomi/network/b;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/xiaomi/network/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/network/f;->h()V

    :cond_0
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public a([Lcom/xiaomi/b/b;)V
    .locals 1

    new-instance p1, Lcom/xiaomi/smack/l;

    const-string v0, "Don\'t support send Blob"

    invoke-direct {p1, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([Lcom/xiaomi/smack/packet/d;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)Lcom/xiaomi/network/b;
    .locals 4

    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/network/f;->a(Ljava/lang/String;Z)Lcom/xiaomi/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/xiaomi/smack/k;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/smack/k;-><init>(Lcom/xiaomi/smack/h;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/smack/d/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    iput v1, p0, Lcom/xiaomi/smack/h;->f:I

    :try_start_0
    iget-object p1, v0, Lcom/xiaomi/network/b;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaomi/smack/h;->f:I

    iget v1, p0, Lcom/xiaomi/smack/h;->f:I

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/smack/h;->f:I

    iget v1, p0, Lcom/xiaomi/smack/h;->f:I

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/smack/h;->f:I

    iget v1, p0, Lcom/xiaomi/smack/h;->f:I

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    shl-int/lit8 p1, p1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smack/h;->f:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method protected declared-synchronized b()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public b(ILjava/lang/Exception;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smack/h;->a(ILjava/lang/Exception;)V

    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/smack/h;->u:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/xiaomi/smack/h;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/h;->a(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/smack/i;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/xiaomi/smack/i;-><init>(Lcom/xiaomi/smack/h;IJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/h;->r:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/j;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/j;-><init>(Lcom/xiaomi/smack/h;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaomi/smack/h;->a(IILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/smack/h;->m:Lcom/xiaomi/smack/b;

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/l;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public s()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public t()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/h;->s:J

    return-void
.end method

.method public u()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/h;->t:J

    return-void
.end method
