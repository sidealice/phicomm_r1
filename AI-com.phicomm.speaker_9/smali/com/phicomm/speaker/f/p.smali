.class public Lcom/phicomm/speaker/f/p;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/f/p$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/phicomm/speaker/f/p$a;

.field private c:I

.field private d:I

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/phicomm/speaker/f/p;->d:I

    .line 43
    new-instance v0, Lcom/phicomm/speaker/f/p$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/f/p$1;-><init>(Lcom/phicomm/speaker/f/p;)V

    iput-object v0, p0, Lcom/phicomm/speaker/f/p;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/f/p;->a:Landroid/app/Activity;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/phicomm/speaker/f/p;->c:I

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 28
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/f/p;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/phicomm/speaker/f/p;->d:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/f/p;)Landroid/app/Activity;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/phicomm/speaker/f/p;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/f/p;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/phicomm/speaker/f/p;->c:I

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/f/p;)Lcom/phicomm/speaker/f/p$a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/phicomm/speaker/f/p;->b:Lcom/phicomm/speaker/f/p$a;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/f/p;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/phicomm/speaker/f/p;->d:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/f/p;->a:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/f/p;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/f/p$a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/f/p;->b:Lcom/phicomm/speaker/f/p$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/f/p;->a:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/f/p;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
