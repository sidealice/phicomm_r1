.class Lcom/phicomm/speaker/views/DatePickerView$3;
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
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/phicomm/speaker/views/DatePickerView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/DatePickerView;Ljava/util/Calendar;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    iput-object p2, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    iget-object v3, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v3}, Lcom/phicomm/speaker/views/DatePickerView;->b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/views/DatePickerView;->a(Lcom/phicomm/speaker/views/DatePickerView;I)I

    move-result v2

    .line 154
    iget-object v3, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v3}, Lcom/phicomm/speaker/views/DatePickerView;->g(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v3

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v3}, Lcom/phicomm/speaker/views/DatePickerView;->h(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v3}, Lcom/phicomm/speaker/views/DatePickerView;->i(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v3

    if-le v1, v3, :cond_0

    .line 155
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/DatePickerView;->i(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v2

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {v3}, Lcom/phicomm/speaker/views/DatePickerView;->d(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->e(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->f(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->f(Lcom/phicomm/speaker/views/DatePickerView;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-gt v1, v2, :cond_3

    if-ge v1, p1, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 161
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->b:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-static {p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView$3;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(I)V

    :goto_2
    return-void
.end method
