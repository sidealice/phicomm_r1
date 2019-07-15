.class public Lcom/huawei/hms/support/log/e;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/log/e$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/huawei/hms/support/log/LogLevel;

.field d:J

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:Ljava/lang/StringBuilder;

.field private l:Ljava/text/SimpleDateFormat;


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->a:Ljava/lang/String;

    const-string v1, "HMS"

    iput-object v1, p0, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/hms/support/log/e;->d:J

    iput-wide v1, p0, Lcom/huawei/hms/support/log/e;->e:J

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/hms/support/log/e;->j:I

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->l:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->a:Ljava/lang/String;

    const-string v1, "HMS"

    iput-object v1, p0, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/hms/support/log/e;->d:J

    iput-wide v1, p0, Lcom/huawei/hms/support/log/e;->e:J

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/hms/support/log/e;->j:I

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->l:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    return-void
.end method

.method private a(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->l:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/huawei/hms/support/log/e;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const/16 v0, 0x5b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hms/support/log/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    iget-object v1, p0, Lcom/huawei/hms/support/log/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/huawei/hms/support/log/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/huawei/hms/support/log/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    return-object p1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/huawei/hms/support/log/e;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/e;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;
    .locals 3

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/hms/support/log/e;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    iget-object v1, p0, Lcom/huawei/hms/support/log/e;->c:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v1}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result v1

    sget-object v2, Lcom/huawei/hms/support/log/LogLevel;->OUT:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v2}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hms/support/log/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/huawei/hms/support/log/e;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/huawei/hms/support/log/e;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/support/log/e;->d:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/hms/support/log/e;->e:J

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/support/log/e;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/support/log/e;->h:I

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/huawei/hms/support/log/e;->j:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/support/log/e;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/support/log/e;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "HMS"

    const-string v1, "create log error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/huawei/hms/support/log/e;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/huawei/hms/support/log/e;->b(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    return-object p0
.end method

.method public a(Lcom/huawei/hms/support/log/f;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/huawei/hms/support/log/f;->a(Lcom/huawei/hms/support/log/e;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/e;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/e;->b(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/log/e;->b(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/e;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/huawei/hms/support/log/e;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/log/a/a;->a()Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/e;->a(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/log/a/a;->a()Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/e;->b(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/log/a/a;->a()Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/e;->a(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/e;->b(Lcom/huawei/hms/support/log/a/a;)Lcom/huawei/hms/support/log/a/a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
