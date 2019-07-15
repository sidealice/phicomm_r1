.class public Lcom/phicomm/speaker/adapter/c/b;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "IntroductionViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/c/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/phicomm/speaker/adapter/c/b$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/phicomm/speaker/adapter/c/b$a;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const v0, 0x7f090302

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/c/b;->a:Landroid/widget/TextView;

    const v0, 0x7f090301

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/c/b;->b:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/c/b;->c:Lcom/phicomm/speaker/adapter/c/b$a;

    return-void
.end method

.method private a(J)I
    .locals 1

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Introduction;I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Introduction;->getIntroduction_publish_time()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 38
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/adapter/c/b;->a(J)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object p2, p0, Lcom/phicomm/speaker/adapter/c/b;->b:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f011d

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/c/b;->b:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f011e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Introduction;->getIntroduction_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/c/b;->itemView:Landroid/view/View;

    new-instance v0, Lcom/phicomm/speaker/adapter/c/c;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/adapter/c/c;-><init>(Lcom/phicomm/speaker/adapter/c/b;Lcom/phicomm/speaker/bean/Introduction;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/c/b;->a:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/c/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method final synthetic a(Lcom/phicomm/speaker/bean/Introduction;Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/c/b;->c:Lcom/phicomm/speaker/adapter/c/b$a;

    invoke-interface {p2, p1}, Lcom/phicomm/speaker/adapter/c/b$a;->a(Lcom/phicomm/speaker/bean/Introduction;)V

    return-void
.end method
