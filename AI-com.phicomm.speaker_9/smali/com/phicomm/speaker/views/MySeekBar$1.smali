.class Lcom/phicomm/speaker/views/MySeekBar$1;
.super Ljava/lang/Object;
.source "MySeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/MySeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/MySeekBar;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/MySeekBar;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MySeekBar;->a(Lcom/phicomm/speaker/views/MySeekBar;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/views/MySeekBar;->a(Lcom/phicomm/speaker/views/MySeekBar;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MySeekBar;->b(Lcom/phicomm/speaker/views/MySeekBar;)Lcom/phicomm/speaker/views/MySeekBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MySeekBar;->b(Lcom/phicomm/speaker/views/MySeekBar;)Lcom/phicomm/speaker/views/MySeekBar$a;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/MySeekBar$1;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MySeekBar;->getShowProgress()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/views/MySeekBar$a;->a(I)V

    :cond_0
    return-void
.end method
