.class Lcom/phicomm/speaker/views/DatePickerView$1;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcom/phicomm/speaker/views/wheelview/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/DatePickerView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/DatePickerView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/DatePickerView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/DatePickerView;->d(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->d(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 78
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->e(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 79
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->f(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    goto/16 :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/DatePickerView;->g(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v2

    if-le p1, v2, :cond_1

    .line 81
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->g(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 82
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->h(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 83
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->i(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v2

    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->j(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 86
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;I)I

    move-result v2

    .line 89
    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->d(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->e(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v4

    if-gt v0, v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v5}, Lcom/phicomm/speaker/views/DatePickerView;->e(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 92
    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->f(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 93
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/DatePickerView;->f(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v2

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v4}, Lcom/phicomm/speaker/views/DatePickerView;->g(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->h(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result p1

    if-lt v0, p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->h(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    .line 100
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->i(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result p1

    if-le v2, p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->i(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v2

    :cond_3
    if-le v1, v2, :cond_4

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    :cond_4
    if-ge v1, v3, :cond_5

    .line 109
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$1;->a:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    :cond_5
    :goto_0
    return-void
.end method
