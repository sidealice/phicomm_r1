.class public Lcom/ta/utdid2/a/a;
.super Ljava/lang/Object;
.source "AidManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.ta.utdid2.a.a"

.field private static a:Lcom/ta/utdid2/a/a;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ta/utdid2/a/a;
    .locals 2

    const-class v0, Lcom/ta/utdid2/a/a;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/a/a;->a:Lcom/ta/utdid2/a/a;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/ta/utdid2/a/a;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/a/a;->a:Lcom/ta/utdid2/a/a;

    .line 34
    :cond_0
    sget-object p0, Lcom/ta/utdid2/a/a;->a:Lcom/ta/utdid2/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 92
    sget-object p1, Lcom/ta/utdid2/a/a;->TAG:Ljava/lang/String;

    const-string p2, "no context!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v0, ""

    .line 98
    iget-object v1, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/a/b;->a(Landroid/content/Context;)Lcom/ta/utdid2/a/b;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ta/utdid2/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1
    iget-object p3, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, v0, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/b/a/j;->a(JI)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 71
    :cond_3
    :goto_0
    sget-object p3, Lcom/ta/utdid2/a/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mContext:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; has appName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; has token:"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/a;)V
    .locals 8

    if-nez p4, :cond_0

    .line 43
    sget-object p1, Lcom/ta/utdid2/a/a;->TAG:Ljava/lang/String;

    const-string p2, "callback is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/b/a/j;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x3e9

    .line 57
    invoke-interface {p4, p1, v6}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/b/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/a/b;->a(Landroid/content/Context;)Lcom/ta/utdid2/a/b;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/ta/utdid2/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/a;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x3eb

    .line 63
    invoke-interface {p4, p1, v6}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    .line 46
    :cond_4
    :goto_1
    sget-object p3, Lcom/ta/utdid2/a/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mContext:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ta/utdid2/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; has appName:"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; has token:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3ea

    const-string p2, ""

    .line 48
    invoke-interface {p4, p1, p2}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    return-void
.end method
