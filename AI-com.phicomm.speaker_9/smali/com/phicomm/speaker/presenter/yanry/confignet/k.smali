.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/k;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/k;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Ljava/lang/String;)V

    return-void
.end method
