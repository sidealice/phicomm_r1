.class public interface abstract Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/api/HuaweiApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectionFailedListener"
.end annotation


# virtual methods
.method public abstract onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .param p1    # Lcom/huawei/hms/api/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
