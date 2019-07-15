.class public Lcom/phicomm/speaker/views/CommonDialog$Builder;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Landroid/view/View$OnClickListener;

.field protected h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d:I

    .line 101
    iput v0, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->f:I

    .line 106
    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/phicomm/speaker/views/CommonDialog;
    .locals 2

    .line 161
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/views/CommonDialog;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/views/CommonDialog$Builder;)V

    return-object v0
.end method

.method public b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->h:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public c(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 0

    .line 130
    iput p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d:I

    return-object p0
.end method

.method public d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->e:Ljava/lang/String;

    return-object p0
.end method
