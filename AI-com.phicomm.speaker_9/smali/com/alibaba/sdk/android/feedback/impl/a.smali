.class public Lcom/alibaba/sdk/android/feedback/impl/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/feedback/util/FeedbackErrorCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/util/FeedbackErrorCallback;->onError(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/impl/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/feedback/util/FeedbackErrorCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
