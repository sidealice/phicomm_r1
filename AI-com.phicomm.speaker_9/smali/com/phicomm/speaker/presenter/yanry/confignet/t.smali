.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/t;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/t;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->f()V

    return-void
.end method
