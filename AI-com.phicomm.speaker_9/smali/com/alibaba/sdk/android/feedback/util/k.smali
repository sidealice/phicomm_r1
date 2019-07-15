.class public Lcom/alibaba/sdk/android/feedback/util/k;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/util/k;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/util/k;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/alibaba/sdk/android/feedback/util/k;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/util/k;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    sput p1, Lcom/alibaba/sdk/android/feedback/util/k;->b:I

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->activityRoot:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/alibaba/sdk/android/feedback/R$id;->title_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/util/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/util/l;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/feedback/util/l;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackUnreadCount(Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;)V

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/feedback/util/k;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/m;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/feedback/util/m;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/alibaba/sdk/android/feedback/util/k;->b:I

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/alibaba/sdk/android/feedback/util/k;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->title_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/util/k;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/util/k;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/util/k;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->red_point:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 1

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/sdk/android/feedback/R$id;->red_point:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
