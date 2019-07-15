.class Lcom/phicomm/speaker/activity/FactoryActivity$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "FactoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/FactoryActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/msgcenter/bean/DeviceStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/phicomm/speaker/activity/FactoryActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/FactoryActivity;Ljava/lang/String;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->c:Lcom/phicomm/speaker/activity/FactoryActivity;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->b:I

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->c:Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/FactoryActivity;->j()V

    .line 90
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : \u83b7\u53d6\u5931\u8d25stateCode"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->c:Lcom/phicomm/speaker/activity/FactoryActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    iget v1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected a(ILcom/unisound/lib/msgcenter/bean/DeviceStatus;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->c:Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/FactoryActivity;->i()V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->getOnline()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "\u5728\u7ebf"

    goto :goto_0

    :cond_0
    const-string p2, "\u79bb\u7ebf"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->c:Lcom/phicomm/speaker/activity/FactoryActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    iget v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$2;->b:I

    invoke-virtual {p2, v0, p1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p2, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/FactoryActivity$2;->a(ILcom/unisound/lib/msgcenter/bean/DeviceStatus;)V

    return-void
.end method
