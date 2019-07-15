.class public Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;
.super Landroid/app/Dialog;
.source "PhiLinkDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/phicomm/speaker/adapter/l;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f1000bd

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->e:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;

    return-object p0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->setCancelable(Z)V

    const v0, 0x7f0b00d2

    .line 59
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->setContentView(I)V

    const v0, 0x7f09017b

    .line 60
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->d:Landroid/widget/ListView;

    const v0, 0x7f0900eb

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09016a

    .line 62
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->f:Landroid/widget/LinearLayout;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    .line 64
    new-instance v1, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;-><init>(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->e:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->c:Lcom/phicomm/speaker/adapter/l;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/l;->notifyDataSetChanged()V

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->d:Landroid/widget/ListView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/ListView;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;-><init>(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mList size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 94
    new-instance p1, Lcom/phicomm/speaker/adapter/l;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/phicomm/speaker/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->c:Lcom/phicomm/speaker/adapter/l;

    .line 95
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->d:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->c:Lcom/phicomm/speaker/adapter/l;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->f:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->d:Landroid/widget/ListView;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/ListView;I)V

    return-void
.end method
