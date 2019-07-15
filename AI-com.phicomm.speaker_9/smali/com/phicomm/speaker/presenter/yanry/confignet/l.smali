.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/l;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/l;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e()V

    return-void
.end method
