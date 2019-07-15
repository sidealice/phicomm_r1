.class public Lcom/phicomm/speaker/f/c;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/phicomm/speaker/f/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/f/c;
    .locals 1

    .line 30
    sget-object v0, Lcom/phicomm/speaker/f/c;->b:Lcom/phicomm/speaker/f/c;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/phicomm/speaker/f/c;

    invoke-direct {v0}, Lcom/phicomm/speaker/f/c;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/f/c;->b:Lcom/phicomm/speaker/f/c;

    .line 33
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/c;->b:Lcom/phicomm/speaker/f/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Activity;
    .locals 3

    .line 172
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 173
    sget-object v1, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    sget-object p1, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 185
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/activity/MainActivity;->b()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    .line 43
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 143
    :goto_0
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 144
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_3

    .line 149
    sget-object p1, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-le p1, v1, :cond_3

    .line 150
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/f/c;->b(Landroid/app/Activity;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 2

    .line 50
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 53
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 56
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 111
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 112
    sget-object v1, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 113
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    sget-object v2, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/phicomm/speaker/f/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
