.class public Lcom/xiaomi/push/service/ba;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/ba;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/ba;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/ba;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/ba;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/ba;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/ba;->f:Ljava/lang/String;

    iput p7, p0, Lcom/xiaomi/push/service/ba;->g:I

    return-void
.end method

.method public static a()Z
    .locals 2

    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/ak$b;
    .locals 3

    new-instance v0, Lcom/xiaomi/push/service/ak$b;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/ak$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->e()Lcom/xiaomi/push/service/aa;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/ba;->a(Lcom/xiaomi/push/service/ak$b;Landroid/content/Context;Lcom/xiaomi/push/service/aa;Ljava/lang/String;)Lcom/xiaomi/push/service/ak$b;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/service/ak$b;Landroid/content/Context;Lcom/xiaomi/push/service/aa;Ljava/lang/String;)Lcom/xiaomi/push/service/ak$b;
    .locals 11

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/ba;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/ba;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/ba;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->h:Ljava/lang/String;

    const-string v0, "XMPUSH-PASS"

    iput-object v0, p1, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaomi/push/service/ak$b;->e:Z

    const-string v1, ""

    invoke-static {p2}, Lcom/xiaomi/push/service/ba;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/android/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sdk_ver"

    aput-object v4, v3, v0

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "cpvn"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "3_2_2"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "cpvc"

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const/16 v4, 0x75fa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "aapn"

    const/4 v10, 0x6

    aput-object v4, v3, v10

    const/4 v4, 0x7

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/xiaomi/push/service/ak$b;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/service/ba;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1000271"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/ba;->d:Ljava/lang/String;

    :goto_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s,sync:1"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "appid"

    aput-object v4, v3, v0

    aput-object v1, v3, v5

    const-string v1, "locale"

    aput-object v1, v3, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    const-string v1, "miid"

    aput-object v1, v3, v8

    invoke-static {p2}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/ax;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/service/ba;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",%1$s:%2$s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ab"

    aput-object v3, v2, v0

    aput-object p4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    :cond_2
    iput-object p3, p1, Lcom/xiaomi/push/service/ak$b;->k:Lcom/xiaomi/push/service/aa;

    return-object p1
.end method
