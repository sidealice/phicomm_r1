.class Lcom/baidu/location/b/b$a;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->a(Lcom/baidu/location/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/a;->h:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/a;->h:I

    goto :goto_0
.end method
