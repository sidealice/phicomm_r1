.class public Lcom/huawei/hms/support/log/a;
.super Lcom/huawei/hms/support/log/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/log/a$a;,
        Lcom/huawei/hms/support/log/a$b;
    }
.end annotation


# static fields
.field private static c:Lcom/huawei/hms/support/log/a$a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/support/log/a$a;

    invoke-direct {v0}, Lcom/huawei/hms/support/log/a$a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/a;->c:Lcom/huawei/hms/support/log/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 2

    const-wide/32 v0, 0x64000

    invoke-direct {p0, p2, v0, v1}, Lcom/huawei/hms/support/log/f;-><init>(Ljava/lang/String;J)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/huawei/hms/support/log/a;->e:Z

    iput-boolean p2, p0, Lcom/huawei/hms/support/log/a;->f:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/hms/support/log/a;->g:Z

    iput-object p3, p0, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/LogLevel;

    iput-object p1, p0, Lcom/huawei/hms/support/log/a;->d:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/huawei/hms/support/log/a;->a()V

    invoke-direct {p0}, Lcom/huawei/hms/support/log/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "AndroidLogger"

    const-string p3, "AndroidLogger init error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/log/a;->c:Lcom/huawei/hms/support/log/a$a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/log/a;->c:Lcom/huawei/hms/support/log/a$a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a$a;->start()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/huawei/hms/support/log/a;->c(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/support/log/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/hms/support/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 7

    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "HWLog"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "HWModuleLog"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/support/log/a;->d:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/huawei/hms/support/log/a;->e:Z

    const-string v1, "HWINFO"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/support/log/a;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    iput-boolean v4, p0, Lcom/huawei/hms/support/log/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AndroidLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading configuration error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Lcom/huawei/hms/support/log/LogLevel;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-boolean p1, p0, Lcom/huawei/hms/support/log/a;->g:Z

    return p1

    :pswitch_1
    iget-boolean p1, p0, Lcom/huawei/hms/support/log/a;->f:Z

    return p1

    :pswitch_2
    iget-boolean p1, p0, Lcom/huawei/hms/support/log/a;->e:Z

    return p1

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/log/e;)V
    .locals 2

    sget-object v0, Lcom/huawei/hms/support/log/a;->c:Lcom/huawei/hms/support/log/a$a;

    new-instance v1, Lcom/huawei/hms/support/log/a$b;

    invoke-direct {v1, p1, p0}, Lcom/huawei/hms/support/log/a$b;-><init>(Lcom/huawei/hms/support/log/e;Lcom/huawei/hms/support/log/f;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a$a;->a(Lcom/huawei/hms/support/log/a$b;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/support/log/LogLevel;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/huawei/hms/support/log/e;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/log/e;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    invoke-direct {p0, v1, v2, v0}, Lcom/huawei/hms/support/log/a;->b(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/support/log/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/huawei/hms/support/log/a;->a(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "AndroidLogger"

    const-string v0, "write error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
