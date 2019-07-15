.class Lcom/phicomm/speaker/popup/b$2;
.super Ljava/lang/Object;
.source "DateChosePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/b;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/popup/b;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/b;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/views/DatePickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/DatePickerView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    iget-object v0, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v0}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/views/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/DatePickerView;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v1}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/views/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/DatePickerView;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v2}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/views/DatePickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/DatePickerView;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/phicomm/speaker/popup/b;->a(III)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/b;->b(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/c/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/b;->b(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v0}, Lcom/phicomm/speaker/popup/b;->c(Lcom/phicomm/speaker/popup/b;)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v1}, Lcom/phicomm/speaker/popup/b;->d(Lcom/phicomm/speaker/popup/b;)I

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-static {v2}, Lcom/phicomm/speaker/popup/b;->e(Lcom/phicomm/speaker/popup/b;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/phicomm/speaker/c/a;->a(III)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b$2;->a:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/b;->b()V

    return-void
.end method
