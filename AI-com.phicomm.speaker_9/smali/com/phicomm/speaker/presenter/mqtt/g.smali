.class final synthetic Lcom/phicomm/speaker/presenter/mqtt/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/mqtt/f;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/g;->a:Lcom/phicomm/speaker/presenter/mqtt/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/g;->a:Lcom/phicomm/speaker/presenter/mqtt/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/f;->b()V

    return-void
.end method
