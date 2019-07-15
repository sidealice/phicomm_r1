.class public Lcom/phicomm/speaker/presenter/yanry/a/g;
.super Lcom/phicomm/speaker/model/common/a/d;
.source "ReminderPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/yanry/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/model/common/a/d<",
        "Lcom/unisound/lib/time/bean/AlarmReminder;",
        ">;",
        "Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/fragment/ReminderFragment;

.field private b:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lcom/phicomm/speaker/adapter/c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/time/bean/TimeManageBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Lcom/phicomm/speaker/model/common/e;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Lcom/unisound/lib/time/bean/AlarmReminder;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/ReminderFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/d;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/phicomm/speaker/adapter/c;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/adapter/c;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->e:Lcom/phicomm/speaker/adapter/c;

    .line 76
    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b008d

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->j:Landroid/view/View;

    .line 77
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->e:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 79
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/g$1;

    invoke-direct {v0, p0, p3}, Lcom/phicomm/speaker/presenter/yanry/a/g$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    .line 87
    invoke-virtual {p3, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 88
    invoke-virtual {p3, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    .line 90
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 91
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 92
    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->d:Landroid/support/v7/widget/RecyclerView;

    .line 93
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/a/g$2;

    invoke-direct {p1, p0, p3, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->g:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/g;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->j:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V
    .locals 1

    .line 171
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/phicomm/speaker/presenter/yanry/a/g$3;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/TimeManageBean;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method

.method private a(Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 370
    new-instance p1, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-direct {p1}, Lcom/unisound/lib/time/bean/TimeManageBean;-><init>()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/unisound/lib/time/bean/TimeManageBean;->setAlarm(Ljava/util/List;)V

    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->g:Lcom/phicomm/speaker/e/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/c/b;->onResult(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/unisound/lib/time/bean/TimeManageBean;)V
    .locals 4

    .line 113
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->k:Z

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->c:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/TimeManageBean;->getAlarm()Ljava/util/List;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/TimeManageBean;->getPageCount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/phicomm/speaker/model/common/e;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 123
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 124
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->e:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->e:Lcom/phicomm/speaker/adapter/c;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->j:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V

    if-lez p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    :cond_1
    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 136
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1ee93f8e

    if-eq v2, v3, :cond_5

    const v3, 0x5897a51

    if-eq v2, v3, :cond_4

    const v3, 0x508aca51

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "countDown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "reminder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v1

    goto :goto_1

    :cond_6
    :goto_0
    move p1, v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    move p1, v1

    goto :goto_2

    :pswitch_0
    const v1, 0x7f0800c5

    const p1, 0x7f0f0160

    goto :goto_2

    :pswitch_1
    const v1, 0x7f0800bd

    const p1, 0x7f0f015e

    goto :goto_2

    :pswitch_2
    const v1, 0x7f0800c2

    const p1, 0x7f0f015f

    :goto_2
    if-lez v1, :cond_7

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setFailImageResource(I)V

    :cond_7
    if-lez p1, :cond_8

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 157
    invoke-virtual {v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_8
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z
    .locals 2

    .line 196
    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->getItemCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 198
    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)Z"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "update reminder: %s."

    const/4 v3, 0x1

    .line 206
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v4}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)V

    return v3

    :cond_0
    const-string p0, "udid is null!"

    .line 210
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/model/common/e;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)Lcom/unisound/lib/time/bean/AlarmReminder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->l:Lcom/unisound/lib/time/bean/AlarmReminder;

    return-object p1
.end method

.method public static b(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)Z"
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "delete reminder."

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/phicomm/speaker/e/c;->b(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "udid is null!"

    .line 221
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    return-object p0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    const-string p1, "countDown"

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b00b2

    goto :goto_0

    :cond_0
    const p1, 0x7f0b00b1

    :goto_0
    return p1
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/time/bean/AlarmReminder;)Landroid/view/View$OnClickListener;
    .locals 8

    .line 288
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1ee93f8e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x508aca51

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "countDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0902fb

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%tR"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 293
    :pswitch_0
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getCountDownTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 294
    div-int/lit16 v2, v0, 0xe10

    .line 295
    rem-int/lit16 v5, v0, 0xe10

    div-int/lit8 v5, v5, 0x3c

    .line 296
    rem-int/lit8 v0, v0, 0x3c

    .line 297
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v1

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 290
    :pswitch_1
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%tF %<tR"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_2
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09027c

    .line 304
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090056

    .line 305
    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "alarm"

    .line 306
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getRepeatDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/phicomm/speaker/f/a/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const-string v3, "reminder"

    .line 310
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    .line 312
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 314
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_5
    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 320
    :goto_4
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->isOpen()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 322
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->getHitRect(Landroid/graphics/Rect;)V

    .line 323
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1e

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 324
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 325
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x14

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 326
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 327
    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$a;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/graphics/Rect;Landroid/view/View;Lcom/unisound/lib/time/bean/AlarmReminder;)V

    .line 328
    iget-object p2, p1, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 329
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object p1, p1, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 46
    check-cast p2, Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/time/bean/AlarmReminder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x44

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "isDeleteOperation"

    const/4 p2, 0x0

    .line 336
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->l:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 6

    .line 347
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v0

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {v2}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v3}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "20"

    new-instance v5, Lcom/phicomm/speaker/presenter/yanry/a/g$5;

    invoke-direct {v5, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/g$5;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Z)Z
    .locals 10

    .line 254
    iget-wide v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    .line 256
    iget-wide v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    sub-long v4, v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    const/4 v0, 0x0

    if-lez v2, :cond_0

    .line 257
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, "get reminder data(udid=%s,type=%s)."

    const/4 v2, 0x2

    .line 259
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iput-boolean v9, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->k:Z

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->b()V

    .line 262
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setShowLoading(Z)V

    .line 263
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 264
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v3

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "20"

    iget-object v8, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->g:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual/range {v3 .. v8}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return v9

    :cond_0
    return v0
.end method

.method public b()V
    .locals 9

    .line 230
    iget-wide v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    .line 232
    iget-wide v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->h:J

    sub-long v4, v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 233
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->k:Z

    .line 236
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->i:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->b()V

    .line 237
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g;->a:Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    const-string v7, "20"

    new-instance v8, Lcom/phicomm/speaker/presenter/yanry/a/g$4;

    invoke-direct {v8, p0}, Lcom/phicomm/speaker/presenter/yanry/a/g$4;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;)V

    invoke-virtual/range {v3 .. v8}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Z)Z

    return-void
.end method
