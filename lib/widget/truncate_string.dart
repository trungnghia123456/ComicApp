String truncateTo(String data, int maxLength) =>
    (data.length <= maxLength) ? data : '${data.substring(0, maxLength)}...';
